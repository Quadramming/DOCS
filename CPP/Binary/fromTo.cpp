#include <vector>
#include <stdexcept>
#include <string>

using std::vector;
using std::string;
using std::byte;
using std::runtime_error;

using Binary = vector<byte>;

void check(const bool expression, const string& errorMsg) {
	if ( ! expression ) {
		throw runtime_error(errorMsg);
	}
}

template <typename TYPE>
Binary toBinary(const TYPE& value) {
	Binary binary;
	binary.resize(sizeof(TYPE));
	memcpy(binary.data(), &value, sizeof(TYPE));
	return binary;
}

template <typename TYPE>
TYPE fromBinary(const Binary& bin) {
	check(bin.size() == sizeof(TYPE), "Size error");
	TYPE out;
	memcpy(&out, bin.data(), sizeof(TYPE));
	return out;
}

void example() {
	constexpr uint64_t value {0x1234567890};
	const auto binary {toBinary(value)};
	const auto back {fromBinary<uint64_t>(binary)};
}
