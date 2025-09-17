#include <math.h>
#include <stdio.h>
#include <stdlib.h>

double power_2(double a) {

	return (a * a);
}

double der_num(double x, double eps, double func(double)) __attribute__((nonnull(3)));

double der_num(double x, double eps, double func(double)) {

	double f = func(x);
	double f_ = func(x + eps);

	return (f_ - f) / (eps);
}

int main(void) {

	double six = der_num(3, 0.000000001, power_2);
	printf("d/dx(x²) at x=3 := %.12f\n", six);

	double test = der_num(0, 0.00000001, sin);
	printf("d/dx(sin) at x=0 := %.12f\n", test);

	return EXIT_SUCCESS;
}
