/*
 * crc_engine.h
 *
 *  Created on: 26.12.2016
 *      Author: ts
 */

#ifndef CRC_ENGINE_H_
#define CRC_ENGINE_H_

#include <boost/asio/streambuf.hpp>

namespace ctbot {

template <unsigned long Bits, unsigned long TruncPoly>
struct CustomCRC {
	template <typename SizeType>
	static constexpr SizeType crc_update(SizeType crc, uint8_t data) noexcept {
		crc = crc ^ (static_cast<SizeType>(data) << (Bits - 8));
	    for (uint8_t i(0); i < 8; ++i) {
	    	if (crc & (0x80 << (Bits - 8))) {
	        	crc = (crc << 1) ^ TruncPoly;
	        } else {
	        	crc <<= 1;
	        }
	    }

	    return crc;
	}
};

template <class CRCImpl, typename SizeType, unsigned long InitRem>
class CrcEngine {
protected:
	SizeType value;

public:
	using SizeT = SizeType;

	CrcEngine(SizeType init_rem = InitRem) noexcept : value(init_rem) {}

	void process_byte(uint8_t byte) noexcept {
		value = static_cast<SizeType>(CRCImpl::crc_update(value, byte));
	}

	void process_bytes(const void* buffer, std::size_t byte_count) noexcept {
		const uint8_t* ptr(reinterpret_cast<const uint8_t*>(buffer));
		for (auto i(0U); i < byte_count; ++i, ++ptr) {
			value = static_cast<SizeType>(CRCImpl::crc_update(value, *ptr));
		}
	}

	void process_block(const void* bytes_begin, const void* bytes_end) noexcept {
		for (auto ptr(reinterpret_cast<const uint8_t*>(bytes_begin)); ptr < bytes_end; ++ptr) {
			value = static_cast<SizeType>(CRCImpl::crc_update(value, *ptr));
		}
	}

	SizeType checksum() const {
		return value;
	}

	void process_stream(std::streambuf& buf, std::size_t count, std::ptrdiff_t offset = 0) noexcept {
		auto& buffer(dynamic_cast<boost::asio::streambuf&>(buf));
		process_bytes(boost::asio::buffer_cast<const char*>(buffer.data()) + offset, count);
	}
};

using crc_header = CrcEngine<CustomCRC<sizeof(uint8_t) * 8, 0x07>, uint8_t, 0>;
using crc_data   = CrcEngine<CustomCRC<sizeof(uint16_t) * 8, 0x1021>, uint16_t, 0xffff>;

} /* namespace ctbot */

#endif /* CRC_ENGINE_H_ */
