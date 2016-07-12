/**
 * \file   client_server.h
 * \author Timo Sandmann
 * \date   01.11.2014
 * \brief  Client / server interface
 */

#ifndef CLIENT_SERVER_H_
#define CLIENT_SERVER_H_

#include "client_server_base.h"
#include <cstdlib>
#include <string>
#include <streambuf>
#ifdef WIN32
#include <SDKDDKVer.h>
#endif
#include <boost/asio.hpp>

/**
 * Interface class for clients and servers based on boost::asio::io_service, provides send and receive operations
 */
class ClientServer : public ClientServerBase {
protected:
	boost::asio::io_service io_service;

public:
	ClientServer() = default;
	virtual ~ClientServer() = default;

	inline auto& get_io_service() {
		return io_service;
 	}

	virtual bool init() = 0;
	virtual std::size_t receive(void* data, const std::size_t size) override = 0;
	virtual std::size_t receive(std::streambuf& buf, const std::size_t size) override = 0;
	virtual std::size_t receive(boost::asio::streambuf::mutable_buffers_type& buf) = 0;
	virtual std::size_t receive_try(std::streambuf& buf,  const std::size_t size) = 0;
	virtual std::size_t receive_until(void* data, const char delim, const std::size_t maxsize) override = 0;
	virtual std::size_t receive_until(void* data, const std::string& delim, const std::size_t maxsize) override = 0;
	virtual std::size_t receive_until(std::streambuf& buf, const std::string& delim, const std::size_t maxsize) override = 0;
	virtual std::size_t receive_until(std::streambuf& buf, const char delim, const std::size_t maxsize) override = 0;
	virtual std::size_t receive_try_until(std::streambuf& buf, const char delim, const std::size_t maxsize) = 0;
	virtual std::size_t receive_async(std::streambuf& buf, std::size_t size, const uint32_t timeout_ms) override = 0;
	virtual std::size_t receive_async(void* data, std::size_t size, const uint32_t timeout_ms) override = 0;
	virtual std::size_t send(const std::string& data) = 0;
	virtual std::size_t send(const void* data, const std::size_t size) override = 0;
	virtual std::size_t send(std::streambuf& buf, const std::size_t size) override = 0;
	virtual int get_rcv_buffer_size() = 0;
	virtual int get_snd_buffer_size() = 0;
	virtual bool set_rcv_buffer_size(const int size) = 0;
	virtual bool set_snd_buffer_size(const int size) = 0;
};

#endif /* CLIENT_SERVER_H_ */
