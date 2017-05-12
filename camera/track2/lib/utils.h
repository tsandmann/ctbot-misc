/*
 * utils.h
 *
 *  Created on: 24.07.2016
 *      Author: ts
 */

#ifndef MAKE_ARRAY_H_
#define MAKE_ARRAY_H_

namespace ArrayUtils {

template <typename... T>
constexpr auto make_array(T&&... values) noexcept {
	return std::array<typename std::decay<typename std::common_type<T...>::type>::type, sizeof...(T)>{{ std::forward<T>(values)... }};
}

template <typename... T>
constexpr auto make_ref_array(T&&... values) noexcept {
	return std::array<std::reference_wrapper<typename std::decay<typename std::common_type<T...>::type>::type>, sizeof...(T)>{{ std::forward<T>(values)... }};
}


template<std::size_t s, class... voids_t>
struct sized_pack : public sized_pack<s - 1, voids_t..., void> {};

template<class... voids_t>
struct sized_pack<0, voids_t...> {};


template <std::size_t N>
struct CreateArray {
	template<class T, class... pack_t>
	static constexpr std::array<T, N> by_copy_helper(const sized_pack<0, pack_t...>&, const T& o) noexcept {
		return{ { (pack_t(), o)... } };
	}

	template<class T>
	static constexpr std::array<T, N> by_copy(const T& o) noexcept {
		return by_copy_helper(sized_pack<N>(), o);
	}
};

} /* namespace ArrayUtils */


namespace TupleUtils {

template <typename Tuple, typename F, std::size_t ...Indices>
constexpr void for_each_impl(Tuple&& tuple, F&& f, std::index_sequence<Indices...>) noexcept {
	using swallow = int[];
	(void) swallow {1, (f(std::get<Indices>(std::forward<Tuple>(tuple))), void(), int{})... };
}

template <typename Tuple, typename F>
constexpr void for_each(Tuple&& tuple, F&& f) noexcept {
	constexpr std::size_t N { std::tuple_size<std::remove_reference_t<Tuple>>::value };
	for_each_impl(std::forward<Tuple>(tuple), std::forward<F>(f), std::make_index_sequence<N>{});
}

} /* namespace TupleUtils */

#endif /* MAKE_ARRAY_H_ */
