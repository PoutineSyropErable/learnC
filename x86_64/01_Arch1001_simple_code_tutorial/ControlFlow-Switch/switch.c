#include <stdlib.h>

int main(int argc, char* argv[]) {
	int a = atoi(argv[1]);
	// ascii to int

	switch (a) {
	case 0:
		return 1;
	case 1:
		return 1;
	default:
		return 3;
	}
}
