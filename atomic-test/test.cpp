#include "test.h"

Foo::Foo() : bar(100) {}

void Foo::test(const uint16_t x) {
	if (x > bar) {
		bar = x;
	}
}
