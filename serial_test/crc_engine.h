/*
 * crc_engine.h
 *
 *  Created on: 26.12.2016
 *      Author: ts
 */

#ifndef CRC_ENGINE_H_
#define CRC_ENGINE_H_

#include <cstddef>
#include <boost/crc.hpp>
#include <boost/asio/streambuf.hpp>

namespace ctbot {

template <typename SizeType, unsigned long TruncPoly, unsigned long InitRem, unsigned long FinalXor>
class CrcEngine {
protected:
	boost::crc_optimal<sizeof(SizeType) * 8, TruncPoly, InitRem, FinalXor, false, false> engine;

public:
	CrcEngine(SizeType init_rem = InitRem) noexcept : engine(init_rem) {}

	void process_byte(unsigned char byte) noexcept {
		return engine.process_byte(byte);
	}

	void process_bytes(void const* buffer, std::size_t byte_count) noexcept {
		return engine.process_bytes(buffer, byte_count);
	}

	void process_block(void const* bytes_begin, void const* bytes_end) noexcept {
		return engine.process_block(bytes_begin, bytes_end);
	}

	SizeType checksum() const noexcept {
		return engine.checksum();
	}

	void process_stream(std::streambuf& buf, std::size_t count, std::ptrdiff_t offset = 0) noexcept {
		auto& buffer(dynamic_cast<boost::asio::streambuf&>(buf));
		return process_bytes(boost::asio::buffer_cast<const char*>(buffer.data()) + offset, count);
	}
};

using crc_header = CrcEngine<uint8_t, 0x07, 0, 0>;
using crc_data   = CrcEngine<uint16_t, 0x1021, 0xFFFF, 0>;

} /* namespace ctbot */

#endif /* CRC_ENGINE_H_ */
