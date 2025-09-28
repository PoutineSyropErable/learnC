#include <alloca.h>
#include <stdlib.h>

[[gnu::optimize("O0")]]
int func(int x) {
	return x;
}

int main(int argc, char** argv) {

	int a = strtol(argv[1], NULL, 10);
	int b = strtol(argv[2], NULL, 10);

	int c[25] = {b}; // this is tricky, it only puts the first element as b. It 0s the other elements

	return c[func(a)];
}
