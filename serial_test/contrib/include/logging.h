/**
 * \file   logging.h
 * \author Timo Sandmann
 * \date   06.11.2014
 * \brief  Logging Framework
 */

#ifndef LOGGING_H_
#define LOGGING_H_

#include <iostream>
#include <sstream>
#include <string>
#include <regex>
#include <array>
#include <mutex>
#include <memory>
#include <type_traits>
#include <boost/type_index.hpp>
#include <boost/core/demangle.hpp>
#include <execinfo.h>

#include "utils.h"


#define TSLOG_FUNCTION(_LOGGER_) _LOGGER_.compact_function(__PRETTY_FUNCTION__)


namespace tslog {

template <int level>
struct LogLevel {
	static constexpr int value = level;

	static constexpr const char* get() noexcept {
		return level == 1 ? "ERROR: " : level == 2 ? "INFO: " : level == 3 ? "DEBUG: " : level == 4 ? "FINE: " : "OTHER";
	}
};

using L_OFF = LogLevel<0>;
using L_ERROR = LogLevel<1>;
using L_INFO = LogLevel<2>;
using L_DEBUG = LogLevel<3>;
using L_FINE = LogLevel<4>;


template <bool flush>
struct EndLine {
	constexpr EndLine() noexcept {}
};


struct Lock {
	constexpr Lock() noexcept {}
};


template <std::size_t N, typename... T>
constexpr auto create_os(T&&... values) noexcept {
	return ArrayUtils::CreateArray<N>::by_copy(ArrayUtils::make_array(std::forward<T>(values)...));
}


class LockPolicyST {
public:
	LockPolicyST() = default;
	constexpr LockPolicyST(std::mutex&, std::mutex&) noexcept {}

	constexpr void lock() const noexcept {}
	constexpr void unlock() const noexcept {}
	constexpr void line_lock() const noexcept {}
	constexpr void line_unlock() const noexcept {}
};


class LockPolicyMT {
protected:
	std::mutex& mutex;
	bool line_locked;

	static std::mutex& get_mutex() noexcept {
		static std::mutex m;
		return m;
	}

public:
	LockPolicyMT(std::mutex& m) noexcept : mutex(m), line_locked(false) {}

	LockPolicyMT() noexcept : mutex(get_mutex()), line_locked(false) {}

	void lock() const noexcept {
		if (line_locked) {
			return;
		}

		try {
			mutex.lock();
		} catch (const std::exception& e) {
			std::cerr << "LOGGING: mutex.lock() failed: " << e.what() << "\n";
		}
	}

	void unlock() const noexcept {
		if (line_locked) {
			return;
		}
		mutex.unlock();
	}

	void line_lock() noexcept {
		try {
			mutex.lock();
			line_locked = true;
		} catch (const std::exception& e) {
			std::cerr << "LOGGING: mutex.lock() failed: " << e.what() << "\n";
		}
	}

	void line_unlock() noexcept {
		if (line_locked) {
			line_locked = false;
			mutex.unlock();
		}
	}
};


struct NewLinePolicyCheck {
	static void check_newline(const std::ostringstream& os, bool& result) noexcept {
		if (os.str().find("\n") != std::string::npos) {
			result = true;
		}
	}
};


struct NewLinePolicyNoCheck {
	static constexpr void check_newline(const std::ostringstream&, bool&) noexcept {}
};


template <bool active>
class TypeNameUtils {
public:
	template <bool on = active>
	static constexpr typename std::enable_if<! on, std::string>::type get_function() noexcept {
		return "";
	}

	template <bool on = active>
	static typename std::enable_if<on, std::string>::type get_function() noexcept {
		void *array[10];

		const auto size(backtrace(array, 10));
		char** strings(backtrace_symbols(array, size));

		const std::string str = size > 1 ? strings[1] : "";
		free(strings);

		if (! str.length()) {
//			std::cout << "Obtained " <<  size << " stack frames.\n";
//
//			for (auto i(0); i < size; ++i) {
//				std::cout << " " << strings[i] << "\n";
//			}
		}

		const std::regex re_ws(R"%%%(\s+)%%%");
		const std::sregex_token_iterator reg_end;
		std::sregex_token_iterator it_full_func(str.cbegin(), str.cend(), re_ws, -1);
		for (auto i(0); i < 3 && it_full_func != reg_end; ++i) {
			++it_full_func;
		}

		if (it_full_func == reg_end) {
			return "";
		}

		const std::string full_name(boost::core::demangle(it_full_func->str().c_str()));
		return compact_function(full_name);
	}

	template <bool on = active>
	static constexpr typename std::enable_if<! on, std::string>::type compact_function(const std::string&) noexcept {
		return "";
	}

	template <bool on = active>
	static typename std::enable_if<on, std::string>::type compact_function(const std::string& str) noexcept {
//		std::cout << " str=\"" << str << "\"\n";
		const auto parts(split(str));
		const auto ns(std::get<0>(parts));
//		std::cout << " ns=\"" << ns << "\"\n";
		const auto class_name(std::get<1>(parts));
//		std::cout << " class_name=\"" << class_name << "\"\n";
		const auto func_name(std::get<2>(parts));
//		std::cout << " func_name=\"" << func_name << "\"\n";
		const auto func_args(std::get<3>(parts));
//		std::cout << " func_args=\"" << func_args << "\"\n";

		const std::string result(class_name + (class_name.length() ? "::" : "") + func_name);
		return result;
	}

	template <bool on = active>
	static typename std::enable_if<on, std::tuple<std::string, std::string, std::string, std::string>>::type split(const std::string& s) noexcept {
//		std::cout << " s=\"" << s << "\"\n";
		const auto params_start(s.find("(", 0));
		const bool w_function(params_start != std::string::npos);
//		std::cout << " w_function=" << w_function << "\n";
		std::string s_wo_params(params_start != std::string::npos ? s.substr(0, params_start) : s);
		if (w_function) {
			const auto space(s_wo_params.rfind(" "));
			const auto templ(s_wo_params.rfind(">"));
			if (space != std::string::npos && (templ == std::string::npos || space > templ)) {
				s_wo_params = s_wo_params.substr(space + 1);
				if (s_wo_params.length() && (s_wo_params.at(0) == '*' || s_wo_params.at(0) == '&')) {
					s_wo_params = s_wo_params.substr(1);
				}
//				std::cout << " s_wo_params=\"" << s_wo_params << "\"\n";
			}
		}

		std::string s_params(params_start != std::string::npos ? s.substr(params_start + 1, s.length() - params_start - 2) : "");
//		std::cout << " s_wo_params=\"" << s_wo_params << "\"\n";

		if (s.find("::") == std::string::npos) {
			return std::make_tuple<std::string, std::string, std::string, std::string>(std::string(), std::string(), std::move(s_wo_params), std::move(s_params));
		}

		const std::regex re_templ(R"%%%(([^<]*)<(.*)>([^>]*))%%%");
		std::smatch match;
		std::regex_match(s_wo_params, match, re_templ);
		std::string s_wo_templ(s_wo_params);
		if (! match.empty()) {
			const std::string templ(match[2]);
//			std::cout << "match.size()=" << match.size() << " templ=\"" << templ << "\"\n";

			const std::regex re_comma(",");
			std::sregex_token_iterator it(templ.begin(), templ.end(), re_comma, -1);
			std::sregex_token_iterator it_end;
			std::stringstream ss;
			ss << match[1] << "<";
			for (; it != it_end; ++it) {
				if (static_cast<std::smatch::difference_type>(ss.str().length()) > match[1].length() + 1) {
					ss << ", ";
				}
				const auto rec_parts(split(*it));
				const auto rec_str(std::get<1>(rec_parts));
				ss << rec_str;
			}
			ss << ">" << match[3];

			s_wo_templ = ss.str();
//			std::cout << " s_wo_templ=\"" << s_wo_templ << "\"\n";
		}


		if (w_function) {
			const std::regex re(R"%%%((.*:{2}?|^)(.*)(::)(.*))%%%");
			std::regex_match(s_wo_templ, match, re);
//			std::cout << "match.size()=" << match.size();
//			for (auto i(0U); i < match.size(); ++i) {
//				std::cout << " match[" << i << "]=\"" << match[i] << "\"";
//			}
//			std::cout << "\n";

			if (match.size() < 4) {
				return std::make_tuple<std::string, std::string, std::string, std::string>(std::string(), std::string(), std::move(s_wo_params), std::move(s_params));
			}

			std::string ns(match[1]);
			if (ns.length()) {
				ns = ns.substr(0, ns.length() - 2);
			}
//			std::cout << " ns=\"" << ns << "\"\n";

			return std::make_tuple(std::move(ns), match[2], match[4], std::move(s_params));
		} else {
			const std::regex re(R"%%%((.*:{2}?|^)(.*))%%%");
			std::regex_match(s_wo_templ, match, re);
//			std::cout << "match.size()=" << match.size();
//			for (auto i(0U); i < match.size(); ++i) {
//				std::cout << " match[" << i << "]=\"" << match[i] << "\"";
//			}
//			std::cout << "\n";

			if (match.size() < 2) {
				return std::make_tuple<>(std::string(), std::move(s_wo_params), std::string(), std::string());
			}

			std::string ns(match[1]);
			if (ns.length()) {
				ns = ns.substr(0, ns.length() - 2);
			}
//			std::cout << " ns=\"" << ns << "\"\n";

			return std::make_tuple<std::string, std::string, std::string, std::string>(std::move(ns), match[2], std::string(), std::string());
		}
	}

	template <bool on = active>
	static typename std::enable_if<on, std::string>::type remove_namespaces(const std::string& class_function) noexcept {
		const std::regex re("::");
		const std::sregex_token_iterator reg_end;
		auto class_it(reg_end);
		std::sregex_token_iterator it(class_function.cbegin(), class_function.cend(), re, -1);
		while (it != reg_end) {
			class_it = it;
			++it;
		}
		return class_it != reg_end ? class_it->str() : class_function;
	}

	template <class T, bool on = active>
	static constexpr typename std::enable_if<! on, std::string>::type classname(bool split_name = false) {
		(void) split_name;
		return "";
	}

	template <class T, bool on = active>
	static typename std::enable_if<on, std::string>::type classname(bool split_name = false) {
		return split_name ? std::get<1>(split(boost::typeindex::type_id<T>().pretty_name())) : boost::typeindex::type_id<T>().pretty_name();
	}

	template <class T, bool on = active>
	static constexpr typename std::enable_if<! on, std::string>::type classname(const T&, bool split_name = false) {
		(void) split_name;
		return "";
	}

	template <class T, bool on = active>
	static typename std::enable_if<on, std::string>::type classname(const T&, bool split_name = false) {
		return classname<T>(split_name);
	}
};


template <unsigned N>
using out_t = std::array<std::reference_wrapper<std::ostream>, N>;


static constexpr EndLine<false> endl;
static constexpr EndLine<true> endlF;
static constexpr Lock lock;


template <bool active, class Level = LogLevel<0>, class NewLinePol = NewLinePolicyCheck, class LockPol = LockPolicyST, unsigned streams = 1>
class LogImpl : public Level, public NewLinePol, public LockPol, public TypeNameUtils<active> {
public:
	LogImpl(out_t<streams>& os) noexcept : out(os), new_line(true) {
		for (auto& o : os) {
			o.get().sync_with_stdio(false);
		}
	}

	LogImpl(out_t<streams>& os, std::mutex& mutex) noexcept : LockPol(mutex), out(os), new_line(true) {
		for (auto& o : os) {
			o.get().sync_with_stdio(false);
		}
	}

	~LogImpl() {
		flush();
	}

	static constexpr bool on() noexcept {
		return active;
	}

	void prefix() const {
		if (new_line) {
			for (auto& os : out) {
				os.get() << this->get();
			}
			new_line = false;
		}
	}

	void flush() const {
		if (active) {
			this->lock();
			for (auto& os : out) {
				os.get().flush();
			}
			this->unlock();
		}
	}

	LogImpl& operator<<(LogImpl& (*pf)(LogImpl&)) {
		this->lock();
		auto ret(pf(*this));
		this->unlock();
		return ret;
	}

	const LogImpl& operator<<(const LogImpl& (*pf)(const LogImpl&)) const {
		this->lock();
		auto ret(pf(*this));
		this->unlock();
		return ret;
	}

	auto& get_oss() const noexcept {
		return oss;
	}

	auto& get_out() const noexcept {
		return out;
	}

	bool& get_newline() const noexcept {
		return new_line;
	}

	template <unsigned I>
	void set_outstream(std::ostream& os) noexcept {
		std::get<I>(out) = os;
	}

protected:
	mutable std::ostringstream oss;
	out_t<streams> out;
	mutable bool new_line;
};

template <typename T, class Level, class NewLinePol, class LockPol, unsigned streams>
constexpr LogImpl<false, Level, NewLinePol, LockPol, streams>& operator<<(LogImpl<false, Level, NewLinePol, LockPol, streams>& v, const T&) noexcept {
	return v;
}

template <typename T, class Level, class NewLinePol, class LockPol, unsigned streams>
constexpr const LogImpl<false, Level, NewLinePol, LockPol, streams>& operator<<(const LogImpl<false, Level, NewLinePol, LockPol, streams>& v, const T&) noexcept {
	return v;
}

template <typename T, class Level, class NewLinePol, class LockPol, unsigned streams>
LogImpl<true, Level, NewLinePol, LockPol, streams>& operator<<(LogImpl<true, Level, NewLinePol, LockPol, streams>& v, const T& t) noexcept {
	v.lock();
	try {
		v.get_oss() << t;
		v.prefix();
		v.check_newline(v.get_oss(), v.get_newline());
		for (auto& o : v.get_out()) {
			o.get() << v.get_oss().str();
		}
		v.get_oss().str("");
	} catch (...) {}
	v.unlock();
	return v;
}

template <typename T, class Level, class NewLinePol, class LockPol, unsigned streams>
const LogImpl<true, Level, NewLinePol, LockPol, streams>& operator<<(const LogImpl<true, Level, NewLinePol, LockPol, streams>& v, const T& t) noexcept {
	v.lock();
	try {
		v.get_oss() << t;
		v.prefix();
		v.check_newline(v.get_oss(), v.get_newline());
		for (auto& o : v.get_out()) {
			o.get() << v.get_oss().str();
		}
		v.get_oss().str("");
	} catch (...) {}
	v.unlock();
	return v;
}

template <typename T, class Level, class NewLinePol, class LockPol, unsigned streams>
LogImpl<true, Level, NewLinePol, LockPol, streams>& operator<<(LogImpl<true, Level, NewLinePol, LockPol, streams>& v, const T* t) noexcept {
	v.lock();
	try {
		v.get_oss() << t;
		v.prefix();
		v.check_newline(v.get_oss(), v.get_newline());
		for (auto& o : v.get_out()) {
			o.get() << v.get_oss().str();
		}
		v.get_oss().str("");
	} catch (...) {}
	v.unlock();
	return v;
}

template <typename T, class Level, class NewLinePol, class LockPol, unsigned streams>
const LogImpl<true, Level, NewLinePol, LockPol, streams>& operator<<(const LogImpl<true, Level, NewLinePol, LockPol, streams>& v, const T* t) noexcept {
	v.lock();
	try {
		v.get_oss() << t;
		v.prefix();
		v.check_newline(v.get_oss(), v.get_newline());
		for (auto& o : v.get_out()) {
			o.get() << v.get_oss().str();
		}
		v.get_oss().str("");
	} catch (...) {}
	v.unlock();
	return v;
}

template <class Level, class NewLinePol, class LockPol, unsigned streams, bool flush>
LogImpl<true, Level, NewLinePol, LockPol, streams>& operator<<(LogImpl<true, Level, NewLinePol, LockPol, streams>& v, const EndLine<flush>&) noexcept {
	v.lock();
	try {
		for (auto& o : v.get_out()) {
			o.get() << "\n";
		}
		v.get_newline() = true;
	} catch (...) {}
	v.unlock();
	v.line_unlock();

	if (flush) {
		v.flush();
	}

	return v;
}

template <class Level, class NewLinePol, class LockPol, unsigned streams, bool flush>
const LogImpl<true, Level, NewLinePol, LockPol, streams>& operator<<(const LogImpl<true, Level, NewLinePol, LockPol, streams>& v, const EndLine<flush>&) noexcept {
	v.lock();
	try {
		for (auto& o : v.get_out()) {
			o.get() << "\n";
		}
		v.get_newline() = true;
	} catch (...) {}
	v.unlock();
	v.line_unlock();

	if (flush) {
		v.flush();
	}

	return v;
}

template <class Level, class NewLinePol, class LockPol, unsigned streams>
LogImpl<true, Level, NewLinePol, LockPol, streams>& operator<<(LogImpl<true, Level, NewLinePol, LockPol, streams>& v, const Lock&) noexcept {
	v.line_lock();
	return v;
}

template <class Level, class NewLinePol, class LockPol, unsigned streams>
const LogImpl<true, Level, NewLinePol, LockPol, streams>& operator<<(const LogImpl<true, Level, NewLinePol, LockPol, streams>& v, const Lock&) noexcept {
	v.line_lock();
	return v;
}


template <class Level, bool locking = false, bool check_newline = true, class out_array = out_t<1>>
class Log {
protected:
	template <class LogLevel>
	using Logger_t = LogImpl<Level::value >= LogLevel::value, LogLevel,
		typename std::conditional<check_newline, NewLinePolicyCheck, NewLinePolicyNoCheck>::type,
		typename std::conditional<locking, LockPolicyMT, LockPolicyST>::type, std::tuple_size<out_array>::value>;

	std::tuple<
		std::shared_ptr<Logger_t<L_ERROR>>,
		std::shared_ptr<Logger_t<L_INFO>>,
		std::shared_ptr<Logger_t<L_DEBUG>>,
		std::shared_ptr<Logger_t<L_FINE>>
	> logger;

	static constexpr unsigned LevelCnt { std::tuple_size<decltype(logger)>::value };

public:
	Logger_t<L_ERROR>& error;
	Logger_t<L_INFO>& info;
	Logger_t<L_DEBUG>& debug;
	Logger_t<L_FINE>& fine;


	Log(std::array<out_array, LevelCnt> os = ArrayUtils::CreateArray<LevelCnt>::by_copy(ArrayUtils::make_ref_array(std::cout))) :
		logger(std::make_shared<Logger_t<L_ERROR>>(std::get<0>(os)), std::make_shared<Logger_t<L_INFO>>(std::get<1>(os)),
			std::make_shared<Logger_t<L_DEBUG>>(std::get<2>(os)), std::make_shared<Logger_t<L_FINE>>(std::get<3>(os))),
		error(*std::get<0>(logger)), info(*std::get<1>(logger)), debug(*std::get<2>(logger)), fine(*std::get<3>(logger)) {}


	Log(std::mutex& mutex, std::array<out_array, LevelCnt> os = ArrayUtils::CreateArray<LevelCnt>::by_copy(ArrayUtils::make_ref_array(std::cout))) :
		logger(std::make_shared<Logger_t<L_ERROR>>(std::get<0>(os), mutex), std::make_shared<Logger_t<L_INFO>>(std::get<1>(os), mutex),
			std::make_shared<Logger_t<L_DEBUG>>(std::get<2>(os), mutex), std::make_shared<Logger_t<L_FINE>>(std::get<3>(os), mutex)),
		error(*std::get<0>(logger)), info(*std::get<1>(logger)), debug(*std::get<2>(logger)), fine(*std::get<3>(logger)) {}


	template <typename... T>
	Log(T&&... values) : Log(create_os<LevelCnt>(std::forward<T>(values)...)) {}


	template <typename... T>
	Log(std::mutex& mutex, T&&... values) : Log(mutex, create_os<LevelCnt>(std::forward<T>(values)...)) {}


	static constexpr int get_level() noexcept {
		return Level::value;
	}


	void flush() const {
		TupleUtils::for_each(logger, [] (auto& e) {
			e->flush();
		});
	}
};

} /* namespace tslog */

#endif // LOGGING_H_
