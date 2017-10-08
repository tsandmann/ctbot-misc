/**
 * \file   test_serial_protocol.cpp
 * \author Timo Sandmann
 * \date   26.12.2016
 * \brief  Simple test application for \see SerialProtocol
 */

#include "logging.h"
#include "serial_connection.h"
#include "serial_protocol.h"
#include "ll_command.h"
#include <atomic>
#include <chrono>
#include <thread>
#include <csignal>
#include <iomanip>
#include <boost/asio/streambuf.hpp>
#include <boost/program_options.hpp>


static std::atomic<bool> g_stop { false };

static void sig_handler(int sig) {
	if (sig == SIGINT) {
		g_stop = true;
	}
}


static std::shared_ptr<boost::program_options::variables_map> parse_options(int argc, char** argv) {
	static tslog::Log<tslog::L_INFO, true, false> logger;
	/* declare the supported program options */
	boost::program_options::options_description desc("allowed options");
	desc.add_options()
		("help,h", "help message")
		("uart,u", boost::program_options::value<std::string>()->value_name("UART")->default_value("/dev/ttyAMA0"), "UART device for connection to ATmega")
		("baudrate,b", boost::program_options::value<uint32_t>()->value_name("BAUDRATE")->default_value(115200), "UART baudrate for connection to ATmega")
		("retries,x", boost::program_options::value<uint32_t>()->value_name("RETRIES")->default_value(5), "Maximum number of transmission retries for connection to ATmega")
		("timeout,t", boost::program_options::value<uint32_t>()->value_name("TIMEOUT")->default_value(100), "Timeout in ms for connection to ATmega")
		("resetpin,r", boost::program_options::value<int>()->value_name("RESET_PIN")->default_value(17), "reset pin for ATmega (not yet implemented!)")
		;

	/* parse program options */
	auto p_options(std::make_shared<boost::program_options::variables_map>());
	try {
		boost::program_options::store(boost::program_options::parse_command_line(argc, argv, desc), *p_options);
		boost::program_options::notify(*p_options);
	} catch (const std::exception& e) {
		logger.error << tslog::lock << TSLOG_FUNCTION(logger.error) << "(): Exception: " << e.what() << tslog::endl;
		logger.info << tslog::lock << desc << tslog::endl;
		return nullptr;
	}

	if (p_options->count("help")) {
		std::cout << desc << "\n";
		return nullptr;
	}

	return p_options;
}


int main(int argc, char** argv) {
	tslog::Log<tslog::L_DEBUG, true, false> logger;

	const auto p_options(parse_options(argc, argv));
	if (! p_options) {
		return 0;
	}

	std::signal(SIGINT, sig_handler);

	tsio::SerialConnection ser_con { (*p_options)["uart"].as<std::string>(), (*p_options)["baudrate"].as<uint32_t>() };
	ser_con.init();
	ctbot::SerialProtocol serial_master { ser_con, (*p_options)["retries"].as<uint32_t>(), (*p_options)["timeout"].as<uint32_t>() };

	uint32_t n_cycles { 0U };
	while (! g_stop) {
		const auto start(std::chrono::high_resolution_clock::now());
		auto i(0);
		for (i = 0; ! g_stop && i < 1000; ++i, ++n_cycles) {
			try {
				boost::asio::streambuf recv_buffer;
				auto p_recv_cmd(std::make_shared<ctbot::CommandSens>(recv_buffer, serial_master));
				logger.fine << tslog::lock << TSLOG_FUNCTION(logger.fine) << "(): received cmd=" << *p_recv_cmd << tslog::endl;
			} catch (const std::exception& e) {
				logger.error << tslog::lock << TSLOG_FUNCTION(logger.error) << "(): receiving of CommandSens failed: \"" << e.what() << "\"" << tslog::endlF;
				break;
			}

			{
				//ctbot::CommandAct cmd({ static_cast<int16_t>(i), static_cast<int16_t>(-i), static_cast<uint8_t>(i % 250), static_cast<uint8_t>((1000 - i) % 250), 0, false });
				ctbot::CommandAct cmd({ 0, 0, 0, 0, static_cast<uint8_t>(1 << ((i / 30) % 8)), false });
				logger.fine << tslog::lock << TSLOG_FUNCTION(logger.fine) << "(): actuator cmd=" << cmd << tslog::endl;

				if (! cmd.send(serial_master)) {
					logger.error << tslog::lock << TSLOG_FUNCTION(logger.error) << "(): sending of CommandAct failed." << tslog::endlF;
					break;
				}
			}

			std::this_thread::sleep_for(std::chrono::milliseconds(1));
		}
		const auto end(std::chrono::high_resolution_clock::now());
		const auto dt = static_cast<uint32_t>(std::chrono::duration_cast<std::chrono::microseconds>(end - start).count());

		logger.info << tslog::lock << tslog::endl;
		logger.info << tslog::lock << TSLOG_FUNCTION(logger.info) << "(): transmission of last " << i << " command cycles took " << std::setprecision(0) << dt / 1000.f << " ms (" << (i / (dt / 1000000.f))
			<< " cycles/s; " << (static_cast<float>(dt) / i) << " us/cycle)" << tslog::endl;

		const auto crc_errors { serial_master.get_crc_errors() };
		const auto resends { serial_master.get_resends() };
		logger.info << tslog::lock << TSLOG_FUNCTION(logger.info) << "(): cycles in total: " << n_cycles << "\tcrc errors: " << crc_errors << " (" << std::setprecision(4) << std::fixed
			<< crc_errors * 100.f / n_cycles	<< "%) \tresends: " << resends << " (" << resends * 100.f / n_cycles << "%).\n" << tslog::endlF;
	}

	return 0;
}
