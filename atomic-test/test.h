#ifndef TEST_H_
#define TEST_H_

#include <atomic>
#include <cstdint>

class Foo {
public:
	Foo();
	virtual ~Foo() = default;

	void test(const uint16_t x);

	inline const auto& get_bar() const {
		return bar;
	}

protected:
	std::atomic<uint32_t> bar;
};

#endif /* TEST_H_ */
