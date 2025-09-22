#include <stdio.h>

#include <stdlib.h>

float add(float a, float b) { return a + b; }
float mult(float a, float b) { return a * b; }

// Declaration with nonnull
float opp(float a, float b, float operation(float, float))
    __attribute__((nonnull(3)));

float opp(float a, float b, float operation(float, float)) {
	// the float operation(float, float) is just syntactic sugar. Which is nice
	// but it decays to a pointer, and there's no syntactic check to see if its
	// null or not, you need a declaration with __attribute__((nonnull(3))) for
	// some static checks
	return operation(a, b);
}

float oppnull(float a, float b, float (*operation)(float, float)) {
	// The og syntax.

	if (operation == NULL) {
		return 420.69;
	}

	return operation(a, b);
}

// Correct
float apply(float a, float b, float (*_Nonnull operation)(float, float)) {
	return operation(a, b);
}

int main(void) {

	float c = opp(5, 7, add);
	float d = opp(2, 3, mult);
	[[maybe_unused]] float e = oppnull(2, 3, NULL);
	[[maybe_unused]] float f = opp(2, 3, NULL);
	[[maybe_unused]] float g = apply(2, 3, NULL);

	printf("c= %f, d = %f\n", c, d);

	return EXIT_SUCCESS;
}
