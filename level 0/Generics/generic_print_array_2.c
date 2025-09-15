#include <stddef.h>
#include <stdio.h>

// Type-specific print format
#define print_elem(x) _Generic((x), int: "%d", float: "%f", double: "%lf")

// Inline function to print an array
#define print_array(arr, n)        \
	_Generic((arr),                \
	    int*: print_array_int,     \
	    float*: print_array_float, \
	    double*: print_array_double)(arr, n)

static inline void print_array_int(const int* arr, size_t n) {
	for (size_t i = 0; i < n; i++) {
		printf("%d", arr[i]);
		if (i != n - 1)
			printf(", ");
	}
	printf("\n");
}

static inline void print_array_float(const float* arr, size_t n) {
	for (size_t i = 0; i < n; i++) {
		printf("%f", arr[i]);
		if (i != n - 1)
			printf(", ");
	}
	printf("\n");
}

static inline void print_array_double(const double* arr, size_t n) {
	for (size_t i = 0; i < n; i++) {
		printf("%lf", arr[i]);
		if (i != n - 1)
			printf(", ");
	}
	printf("\n");
}

int main(void) {
	int ai[] = {1, 2, 3};
	float af[] = {1.1f, 2.2f, 3.3f};
	double ad[] = {1.11, 2.22, 3.33};

	print_array(ai, 3);
	print_array(af, 3);
	print_array(ad, 3);

	return 0;
}
