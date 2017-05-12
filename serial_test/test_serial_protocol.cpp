/*
 * test_serial_protocol.cpp
 *
 *  Created on: 26.12.2016
 *      Author: ts
 */

#include "logging.h"
#include "serial_connection.h"
#include "serial_protocol.h"
#include "ll_command.h"
#include "crc_engine.h"
#include <boost/asio/streambuf.hpp>


#define CRC_TEST

static boost::asio::streambuf recv_buffer;
static std::streambuf& r_buffer(recv_buffer);


template <typename T>
static T crc_xmodem_update(T crc, uint8_t data) {
    crc = crc ^ (static_cast<T>(data) << 8);
    for (auto i(0); i < 8; ++i) {
    	if (crc & 0x8000) {
        	crc = (crc << 1) ^ 0x1021;
        } else {
        	crc <<= 1;
        }
    }

    return crc;
}

template <typename T>
static T process_bytes(const void* buffer, std::size_t byte_count) {
	T value(-1);
	const uint8_t* ptr(reinterpret_cast<const uint8_t*>(buffer));
	for (auto i(0U); i < byte_count; ++i, ++ptr) {
		value = static_cast<T>(crc_xmodem_update(value, *ptr));
	}
	return value;
}


int main(int, char**) {
	tslog::Log<tslog::L_INFO, true, false> logger;

#ifdef CRC_TEST
	ctbot::crc_data crc16_1, crc16_2;

	ctbot::CommandLcd cmd({15, 1, 1, "Hello World! Hello!"});
	uint32_t tmp {0x70563412};

	crc16_1.process_bytes(&tmp, sizeof(tmp));
	logger.info << tslog::lock << "main: crc16_1=0x" << std::hex << static_cast<uint16_t>(crc16_1.checksum()) << std::dec << tslog::endlF;

	crc16_2.process_bytes(&cmd, sizeof(cmd));
	logger.info << tslog::lock << "main: crc16_2 of cmd: 0x" << std::hex << static_cast<uint16_t>(crc16_2.checksum()) << std::dec << tslog::endlF;

	const auto crc16_avr(process_bytes<uint16_t>(&tmp, sizeof(tmp)));
	logger.info << tslog::lock << "main: crc16_avr=0x" << std::hex << crc16_avr << std::dec << tslog::endlF;

	const auto crc16_2_avr(process_bytes<uint16_t>(&cmd, sizeof(cmd)));
	logger.info << tslog::lock << "main: crc16_2_avr of cmd: 0x" << std::hex << crc16_2_avr << std::dec << tslog::endlF;
#endif // CRC_TEST

	try {
		tsio::SerialConnection ser_con("/dev/ttyAMA0", 500000);
		ser_con.init();
		ctbot::SerialProtocol serial_master(ser_con, 10, 1000);

		while (true) {
			//std::shared_ptr<ctbot::CommandAct> p_recv_cmd;
			//std::shared_ptr<ctbot::CommandSens> p_recv_cmd;
			std::shared_ptr<ctbot::CommandLcd> p_recv_cmd;
			auto start(std::chrono::high_resolution_clock::now());
			auto i(0);
			//ctbot::CommandAct cmd({300, -300, ctbot::CommandAct::Type::SERVO_LEFT, ctbot::CommandAct::Type::SERVO_OFF});
			//ctbot::CommandSens cmd({300, -300, 50, true, false, true, 7, 200, 100, 200, 100, 200, 100, 200, 100});
			ctbot::CommandLcd cmd({15, 1, 1, "Hello World! Hello!"});
			for (i = 0; i < 1000; ++i) {
				if (! cmd.send(serial_master)) {
					logger.error << tslog::lock << TSLOG_FUNCTION(logger.error) << "(): cmd.send(serial_master) failed." << tslog::endlF;
					continue;
				}
//				std::this_thread::sleep_for(std::chrono::milliseconds(500));
			//	p_recv_cmd = std::make_shared<ctbot::CommandAct>(r_buffer, serial_master);
			//	p_recv_cmd = std::make_shared<ctbot::CommandSens>(r_buffer, serial_master);
				p_recv_cmd = std::make_shared<ctbot::CommandLcd>(r_buffer, serial_master);
				recv_buffer.consume(static_cast<std::size_t>(r_buffer.in_avail()));
				if (*p_recv_cmd != cmd) {
					logger.error << tslog::lock << TSLOG_FUNCTION(logger.error) << "(): received command different from sent one." << tslog::endlF;
					logger.info << tslog::lock << TSLOG_FUNCTION(logger.error) << "(): cmd.get_data()=" << cmd.get_data() << tslog::endl;
					logger.info << tslog::lock << TSLOG_FUNCTION(logger.error) << "(): p_recv_cmd.get_data()=" << p_recv_cmd->get_data() << tslog::endlF;
					break;
				}
//				std::this_thread::sleep_for(std::chrono::milliseconds(500));
			}
			auto end2(std::chrono::high_resolution_clock::now());
			auto dt2 = static_cast<double>(std::chrono::duration_cast<std::chrono::milliseconds>(end2 - start).count());
			logger.info << tslog::lock << TSLOG_FUNCTION(logger.error) << "(): ping pong of " << i << " commands took " << dt2 << " ms (" << (i / (dt2 / 1000.)) << " cmds / s; "
				<< (dt2 * 1000. / i) << " us / cmd)" << tslog::endl;
			logger.info << tslog::lock << TSLOG_FUNCTION(logger.error) << "(): crc errors: " << serial_master.get_crc_errors() << " resends: " << serial_master.get_resends() << tslog::endl;
			logger.info << tslog::lock << TSLOG_FUNCTION(logger.error) << "(): p_recv_cmd.get_data()=" << p_recv_cmd->get_data() << tslog::endlF;
			logger.debug << tslog::lock << TSLOG_FUNCTION(logger.error) << "(): r_buffer.in_avail()=" << r_buffer.in_avail() << tslog::endlF;
		}

	} catch (const std::exception& e) {
		logger.error << tslog::lock << TSLOG_FUNCTION(logger.error) << "(): Execption: \"" << e.what() << "\"" << tslog::endlF;
		return 1;
	}

	return 0;
}
