#include <time.h>

struct tm* localtime_r(const time_t* timeval, struct tm* result) {
	struct tm* t = localtime(timeval);
	*result = *t;
}
