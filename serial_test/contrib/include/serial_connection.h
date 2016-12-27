/*
 * serial_connection.h
 *
 *  Created on: 01.11.2014
 *      Author: ts
 */

#ifndef SERIAL_CONNECTION_H_
#define SERIAL_CONNECTION_H_

#include "client_server_base.h"
#include "logging.h"
#include <streambuf>
#include <boost/asio/serial_port.hpp>
#include <boost/asio/io_service.hpp>
#include <boost/asio/streambuf.hpp>

namespace tsio {

class SerialConnection : public ClientServerBase {
	tslog::Log<tslog::L_INFO, true, false> logger;

protected:
	boost::asio::io_service io_service;
	boost::asio::serial_port sock;
	boost::asio::streambuf recv_buf;

public:
	SerialConnection(const std::string& device, const unsigned baud);
	virtual ~SerialConnection() = default;

	SerialConnection(const SerialConnection&) = delete;
	SerialConnection& operator=(const SerialConnection&) = delete;

	virtual bool init() override;
	virtual std::size_t receive(void* data, const std::size_t size) override;
	virtual std::size_t receive(std::streambuf& buf, const std::size_t size) override;
	virtual std::size_t receive_until(void* data, const char delim, const std::size_t maxsize) override;
	virtual std::size_t receive_until(void* data, const std::string& delim, const std::size_t maxsize) override;
	virtual std::size_t receive_until(std::streambuf& buf, const std::string& delim, const std::size_t maxsize) override;
	virtual std::size_t receive_until(std::streambuf& buf, const char delim, const std::size_t maxsize) override;
	virtual std::size_t receive_async(std::streambuf& buf, std::size_t size, const uint32_t timeout_ms) override;
	virtual std::size_t receive_async(void* data, std::size_t size, const uint32_t timeout_ms) override;
	virtual std::size_t send(const void* data, const std::size_t size) override;
	virtual std::size_t send(std::streambuf& buf, const std::size_t size) override;
};

} /* namespace tsio */

#endif /* SERIAL_CONNECTION_H_ */
