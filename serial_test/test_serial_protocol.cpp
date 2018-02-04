/**
 * \file   test_serial_protocol.cpp
 * \author Timo Sandmann
 * \date   26.12.2016
 * \brief  Simple test application for SPI connection between Raspberry Pi and ATmega
 */

#include "logging.h"
#include "spi_endpoint.h"
#include "ll_command.h"
#include "crc_engine.h"
#include <atomic>
#include <chrono>
#include <thread>
#include <csignal>
#include <iomanip>
#include <boost/program_options.hpp>
#include <boost/accumulators/accumulators.hpp>
#include <boost/accumulators/statistics/stats.hpp>
#include <boost/accumulators/statistics/min.hpp>
#include <boost/accumulators/statistics/max.hpp>
#include <boost/accumulators/statistics/mean.hpp>
#include <boost/accumulators/statistics/variance.hpp>


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
		("device,d", boost::program_options::value<std::string>()->value_name("SPI DEVICE")->default_value("/dev/spidev0.1"), "SPI device for connection to ATmega")
		("speed,s", boost::program_options::value<uint32_t>()->value_name("SPI SPEED")->default_value(1000000UL), "SPI speed in Hz")
		("resetpin,r", boost::program_options::value<int>()->value_name("RESET_PIN")->default_value(17), "reset pin for ATmega (not implemented)")
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
	tslog::Log<tslog::L_DEBUG, false, false> logger;

	const auto p_options(parse_options(argc, argv));
	if (! p_options) {
		return 0;
	}

	std::signal(SIGINT, sig_handler);

	SpiEndpoint con { (*p_options)["device"].as<std::string>(), SpiEndpoint::MODE_0, (*p_options)["speed"].as<uint32_t>(), 8, 0, 0 } ;
	constexpr size_t tx_size { std::max(ctbot::CommandSens::SIZE, ctbot::CommandAct::SIZE) + sizeof(ctbot::crc_data::SizeT) };

	uint32_t n_cycles { 0U };
	uint32_t crc_errors { 0U };
	uint8_t rx_buffer[tx_size + 2];
	uint8_t tx_buffer[tx_size + 2];
	boost::accumulators::accumulator_set<uint32_t, boost::accumulators::features<boost::accumulators::tag::min, boost::accumulators::tag::max, boost::accumulators::tag::mean,
		boost::accumulators::tag::variance> > tx_time;
	logger.debug << tslog::lock << TSLOG_FUNCTION(logger.debug) << "(): tx_size=" << tx_size << tslog::endlF;
	while (! g_stop) {
		const auto start(std::chrono::high_resolution_clock::now());
		auto i(0);
		for (i = 0; ! g_stop && i < 1000; ++i, ++n_cycles) {
			ctbot::CommandAct cmd({ 0, 0, 0, 0, static_cast<uint8_t>(1 << ((i / 20) % 8)), static_cast<uint32_t>(std::chrono::duration_cast<std::chrono::microseconds>(
				std::chrono::high_resolution_clock::now().time_since_epoch()).count()), false });
			logger.fine << tslog::lock << TSLOG_FUNCTION(logger.fine) << "(): actuator cmd=" << cmd << tslog::endl;
			tx_buffer[0] = static_cast<uint8_t>(tx_size);
			std::memcpy(&tx_buffer[1], &cmd.get_data(), cmd.SIZE);
			ctbot::crc_data tx_crc16;
			tx_crc16.process_bytes(&cmd.get_data(), cmd.SIZE);
			auto crc_ptr { reinterpret_cast<uint16_t *>(&tx_buffer[cmd.SIZE + 1]) };
			*crc_ptr = tx_crc16.checksum();

			const auto tx_start(std::chrono::high_resolution_clock::now());
			con.transfer(rx_buffer, tx_buffer, tx_size + 1);
			const auto tx_end(std::chrono::high_resolution_clock::now());
			const auto tx_dt = static_cast<uint32_t>(std::chrono::duration_cast<std::chrono::microseconds>(tx_end - tx_start).count());
			tx_time(tx_dt);

			logger.fine << tslog::lock << TSLOG_FUNCTION(logger.fine) << "(): rx_buffer:" << std::hex;
			for (auto i(0U); i < tx_size; ++i) {
				logger.fine << "0x" << static_cast<uint16_t>(rx_buffer[i]) << " ";
			}
			logger.fine << tslog::endlF;

			auto p_cmd(reinterpret_cast<const ctbot::CommandBase *>(&rx_buffer[1]));
			ctbot::crc_data crc16;
			switch (p_cmd->get_type()) {
			case ctbot::CommandSens::Type::TYPE_ID: {
				auto ptr(reinterpret_cast<const ctbot::CommandSens *>(&rx_buffer[1]));
				crc16.process_bytes(ptr, sizeof(ctbot::CommandSens));
				auto p_crc16(reinterpret_cast<const uint16_t *>(&rx_buffer[ctbot::CommandSens::SIZE] + 1));
				if (*p_crc16 == crc16.checksum()) {
					if (i == 999) {
//						uint32_t time { ptr->get_data().get_time() };
//						logger.debug << tslog::lock << TSLOG_FUNCTION(logger.debug) << "(): received Sense cmd: time=" << time << " us." << tslog::endl;
						logger.debug << tslog::lock << TSLOG_FUNCTION(logger.debug) << "(): received Sense cmd=" << *ptr << tslog::endlF;
					}
					logger.fine << tslog::lock << TSLOG_FUNCTION(logger.fine) << "(): received Sense cmd=" << *ptr << tslog::endlF;
				} else {
					logger.error << tslog::lock << TSLOG_FUNCTION(logger.error) << "(): invalid CRC16 of Sense cmd=" << *ptr << tslog::endlF;
					++crc_errors;
				}
				break;
			}

			default:
				logger.error << tslog::lock << TSLOG_FUNCTION(logger.error) << "(): unknown cmd received" << tslog::endlF;
				++crc_errors;
				break;
			}

			std::this_thread::sleep_for(std::chrono::milliseconds(10));
		}
		const auto end(std::chrono::high_resolution_clock::now());
		const auto dt = static_cast<uint32_t>(std::chrono::duration_cast<std::chrono::microseconds>(end - start).count());

		logger.info << tslog::lock << tslog::endl;
		logger.info << tslog::lock << TSLOG_FUNCTION(logger.info) << "(): transmission of last " << i << " command cycles took " << std::setprecision(0) << dt / 1000.f << " ms ("
			<< (i / (dt / 1000000.f)) << " cycles/s; " << (static_cast<float>(dt) / i) << " us/cycle)" << tslog::endl;
		logger.info << tslog::lock << TSLOG_FUNCTION(logger.info) << "(): SPI transmission time: min=" << boost::accumulators::min(tx_time) << " us, max=" << boost::accumulators::max(tx_time)
			<< " us, mean=" << boost::accumulators::mean(tx_time) << " us, s=" << std::sqrt(boost::accumulators::variance(tx_time)) << " us." << tslog::endl;
		logger.info << tslog::lock << TSLOG_FUNCTION(logger.info) << "(): -> effective average SPI data rate: " << (1000000.f * 8.f / 1000.f) / (boost::accumulators::mean(tx_time) / tx_size)
			<< " kBit/s." << tslog::endl;
		logger.info << tslog::lock << TSLOG_FUNCTION(logger.info) << "(): cycles in total: " << n_cycles << "\tcrc errors: " << crc_errors << " (" << std::setprecision(4) << std::fixed
			<< crc_errors * 100.f / n_cycles	<< "%)\n" << tslog::endlF;
	}

	return 0;
}
