#include <stdint.h>

#include <alloca.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
int main(int argc, char** argv) {

	int val = strtol(argv[1], NULL, 10);
	int count = strtol(argv[2], NULL, 10);
	int index = strtol(argv[3], NULL, 10);

	uint8_t low = (uint8_t)val; // Just take the low byte

	volatile int* array = alloca(count * sizeof(int));
	memset((void*)array, low, count * sizeof(int));

	return array[index];
}
