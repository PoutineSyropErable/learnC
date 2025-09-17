#include <stdio.h>

#define print_elem(x) _Generic((x), int: "%d", float: "%f", double: "%lf")

#define print_array2(arr, n)                \
	for (size_t i = 0; i < n; i++) {        \
		printf(print_elem(arr[i]), arr[i]); \
		if (i != (n) - 1) {                 \
			printf(", ");                   \
		}                                   \
	}                                       \
	printf("\n");

int main(void) {
	int ints[] = {1, 2, 3};
	float floats[] = {1.1f, 2.2f, 3.3f};
	double doubles[] = {1.11, 2.22, 3.33};

	print_array2(ints, 3);    // prints: 1, 2, 3
	print_array2(floats, 3);  // prints: 1.100000, 2.200000, 3.300000
	print_array2(doubles, 3); // prints: 1.110000, 2.220000, 3.330000
}
