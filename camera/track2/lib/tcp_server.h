/**
 * \file   tcp_server.h
 * \author Timo Sandmann
 * \date   22.07.2014
 * \brief  Sends and receives data over a TCP socket
 *
 */

#ifndef TCP_SERVER_H_
#define TCP_SERVER_H_

#include <string>
#include <memory>
#ifdef WIN32
#include <SDKDDKVer.h>
#endif
#include <boost/asio.hpp>
#include "tcp_client_server.h"
#include "logging.h"

namespace tsio {

/**
 * Tcp server based on boost::asio::ip::tcp, implements tcp send and receive operations of TCP_ClientServer
 */
class TCP_Server : public TCP_ClientServer {
	tslog::Log<tslog::L_DEBUG, true, false> logger;

protected:
	boost::asio::ip::tcp::acceptor acceptor;
	const std::string port;

	void start_accept();
	void handle_accept(const boost::system::error_code& error, std::shared_ptr<boost::asio::ip::tcp::socket> p_socket, boost::asio::ip::tcp::acceptor& acceptor);

public:
	using Ptr = std::shared_ptr<TCP_Server>;

	TCP_Server(const std::string& port, const bool nodelay = false);
	virtual ~TCP_Server();

	virtual bool init() override;

	void abort() {
#if 0
		get_io_service().stop();
#else
		if (! ready) {
			ready = true;
		}
#endif
	}
};

} /* namespace tsio */

#endif // TCP_SERVER_H_
