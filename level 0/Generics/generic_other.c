#include <stdio.h>
// #include <ctype.h>

void print_int(int x) { printf("int: %d\n", x); }

void print_float(float x) { printf("float: %f\n", x); }

void print_double(double x) { printf("double: %lf\n", x); }

// Generic print function using _Generic
#define print(x) \
	_Generic((x), int: print_int, float: print_float, double: print_double)(x)

int main(void) {
	int i = 42;
	float f = 3.14f;
	double d = 2.71828;

	print(i); // calls print_int
	print(f); // calls print_float
	print(d); // calls print_double

	return 0;
}
