#include <iostream>

using std::cout;

class Foo {
public:

	Foo() { // Default constructor
		cout<<"Default constructor \n";
	}
	
	virtual ~Foo() noexcept { // Destructor (virtual if Foo is meant to be a base class)
		cout<<"Destructor \n";
	}
	
	Foo(const Foo& other) { // Copy constructor
		cout<<"Copy constructor \n";
	}
	
	Foo& operator = (const Foo& other) { // Copy assignment
		cout<<"Copy assignment \n";
		return *this;
	}
	
	Foo(Foo&& other) noexcept { // Move constructor
		cout<<"Move constructor \n";
	}
	
	Foo& operator = (Foo&& other) noexcept { // Move assignment
		cout<<"Move assignment \n";
		return *this;
	}
	
};

int main() {
	// Default constructor
	Foo a;
	
	// Copy constructor
	Foo b(a);
	Foo c {a};
	Foo d = a;
	
	// Copy assignment
	a = b;
	
	// Move constructor
	Foo e(std::move(a));
	Foo f {std::move(a)};
	Foo j = std::move(a);
	
	// Move assignment
	a = std::move(b);
	
	// Destructors
}
