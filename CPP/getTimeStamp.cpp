#include <chrono>

using std::chrono::seconds;
using std::chrono::system_clock;
using std::chrono::duration_cast;

int64_t getTimeStamp() noexcept {
	const auto time {system_clock::now()};
	const auto duration {time.time_since_epoch()};
	return duration_cast<seconds>(duration).count();
}
