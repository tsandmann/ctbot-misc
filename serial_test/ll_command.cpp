/**
 * \file   ll_command.cpp
 * \author Timo Sandmann
 * \date   26.12.2016
 * \brief  Low level command interface between ATmega and RPi.
 */

#include "ll_command.h"

namespace ctbot {

template <class TYPE>
LLCommand<TYPE>::LLCommand(const char *buf) noexcept {
	std::memcpy(&data, buf, sizeof(TYPE));
}

std::ostream& operator <<(std::ostream &os, const LLCommand<LLCommandSens> &v) {
	auto data { v.get_data() };
	os << std::boolalpha << "\n";
	os << " type=" << static_cast<uint16_t>(v.get_type()) << "\n";
	os << " enc_l=" << data.get_enc_l() << " enc_r=" << data.get_enc_r() << "\n";
	os << " ir_l=" << data.get_ir_l() << " ir_r=" << data.get_ir_r() << "\n";
	os << " border_l=" << data.get_border_l() << " border_r=" << data.get_border_r() << "\n";
	os << " line_l=" << data.get_line_l() << " line_r=" << data.get_line_r() << "\n";
	os << " ldr_l=" << data.get_ldr_l() << " ldr_r=" << data.get_ldr_r() << "\n";
	os << " rc5=" << data.get_rc5() << " bps=" << static_cast<uint16_t>(data.get_bps()) << "\n";
	os << " door=" << data.get_door() << " error=" << data.get_error() << " transport=" << data.get_transport() << "\n";
	os << " time=" << data.get_time() << " us";
	return os;
}

std::ostream& operator <<(std::ostream &os, const LLCommand<LLCommandAct> &v) {
	auto data { v.get_data() };
	os << "\n type=" << static_cast<uint16_t>(v.get_type()) << "\n";
	os << " motor_l=" << data.get_motor_l() << " motor_r=" << data.get_motor_r() << "\n";
	os << " servo1=" << static_cast<uint16_t>(data.get_servo1()) << " servo2=" << static_cast<uint16_t>(data.get_servo2()) << "\n";
	os << " leds=" << static_cast<uint16_t>(data.get_leds()) << " time=" << data.get_time() << " us. shutdown=" << data.get_shutdown();
	return os;
}

std::ostream& operator <<(std::ostream &os, const LLCommand<LLCommandLcd> &v) {
	auto data { v.get_data() };
	os << "\n type=" << static_cast<uint16_t>(v.get_type()) << "\n";
	os << " ctrl=" << static_cast<uint16_t>(data.get_ctrl()) << "\n";
	os << " text=\"" << data.get_text() << "\"";
	return os;
}

template class LLCommand<LLCommandSens>;
template class LLCommand<LLCommandAct>;
template class LLCommand<LLCommandLcd>;

} /* namespace ctbot */
