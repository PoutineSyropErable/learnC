#include <stdio.h>

int bar(int y) {
	int a = 3 * y;
	printf("bar has returned %d\n", a);
	return a;
}

int foo(int x) {
	int b = 5 * x;
	printf("foo has returned %d\n", b);
	return bar(b);
}

int main() {
	printf("\n\n\n\n");
	int c = foo(7);
	fflush(stdout);
	printf("Main has passed %d\n", c);

	// main frame
	// foo frame
	// bar frame
}
