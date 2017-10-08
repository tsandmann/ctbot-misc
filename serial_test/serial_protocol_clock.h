/**
 * \file   serial_protocol_clock.h
 * \author Timo Sandmann
 * \date   26.12.2016
 * \brief  Clock source for \see SerialProtocol
 */

#ifndef SERIAL_PROTOCOL_CLOCK_H_
#define SERIAL_PROTOCOL_CLOCK_H_

#include <chrono>

class SerialProtocolClock {
protected:
	static auto get_now() noexcept {
		return std::chrono::high_resolution_clock::now();
	}

	static auto constexpr get_diff_ms(const std::chrono::high_resolution_clock::time_point& start, const std::chrono::high_resolution_clock::time_point& end) noexcept {
		return static_cast<uint32_t>(std::chrono::duration_cast<std::chrono::milliseconds>(end - start).count());
	}
};

#endif /* SERIAL_PROTOCOL_CLOCK_H_ */
