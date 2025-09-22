#include <stdlib.h>

typedef int intn;

int main(int argc, char** argv) {
	intn a = (intn)atoi(argv[1]);
	intn b = (intn)atoi(argv[2]);
	intn c = (intn)atoi(argv[3]);

	a *= b;
	a /= c;
	return a;
}
