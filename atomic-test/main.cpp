#include "test.h"

#include <iostream>

int main() {
	Foo foo;
	foo.test(200);
	std::cout << "1: bar=" << foo.get_bar() << std::endl;
	foo.test(20);
	std::cout << "2: bar=" << foo.get_bar() << std::endl;

	return 0;
}
