/**
 * \file   tcp_client_server.h
 * \author Timo Sandmann
 * \date   01.11.2014
 * \brief  TCP client / server interface
 */

#ifndef TCP_CLIENT_SERVER_H_
#define TCP_CLIENT_SERVER_H_

#include "client_server.h"
#include <string>
#include <memory>
#include <streambuf>
#ifdef WIN32
#include <SDKDDKVer.h>
#endif
#include <boost/asio.hpp>

namespace tsio {

/**
 * Interface class for tcp clients and servers based on boost::asio::ip::tcp, provides tcp send and receive operations
 */
class TCP_ClientServer: public ClientServer {
protected:
	std::shared_ptr<boost::asio::ip::tcp::socket> p_sock;
	bool no_delay;
	boost::asio::streambuf recv_buf;

	TCP_ClientServer(const bool nodelay = false);

public:
	using Ptr = std::shared_ptr<TCP_ClientServer>;

	virtual ~TCP_ClientServer();

	virtual bool init() override = 0;
	virtual std::size_t send(const std::string& data) override {
		return send(data.c_str(), data.length());
	}
	virtual std::size_t send(const void* data, const std::size_t size) override;
	virtual std::size_t send(std::streambuf& buf, const std::size_t size) override;
	virtual std::size_t receive(void* data, const std::size_t size) override;
	virtual std::size_t receive(std::streambuf& buf, const std::size_t size) override;
	virtual std::size_t receive(boost::asio::streambuf::mutable_buffers_type& buf) override;
	virtual std::size_t receive_try(std::streambuf& buf,  const std::size_t size) override;
	virtual std::size_t receive_until(void* data, const char delim, const std::size_t maxsize) override;
	virtual std::size_t receive_until(void* data, const std::string& delim, const std::size_t maxsize) override;
	virtual std::size_t receive_until(std::streambuf& buf, const std::string& delim, const std::size_t maxsize) override;
	virtual std::size_t receive_until(std::streambuf& buf, const char delim, const std::size_t maxsize) override;
	virtual std::size_t receive_try_until(std::streambuf& buf, const char delim, const std::size_t maxsize) override;
	virtual std::size_t receive_async(std::streambuf& buf, std::size_t size, const uint32_t timeout_ms) override;
	virtual std::size_t receive_async(void* data, std::size_t size, const uint32_t timeout_ms) override;
	virtual int get_rcv_buffer_size() override;
	virtual int get_snd_buffer_size() override;
	virtual bool set_rcv_buffer_size(const int size) override;
	virtual bool set_snd_buffer_size(const int size) override;
};

} /* namespace tsio */

#endif /* TCP_CLIENT_SERVER_H_ */
