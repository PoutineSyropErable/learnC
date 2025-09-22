#include <iso646.h>
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char* argv[]) {

	int a = 4;
	int b = compl a;
	int c = ~b;

	int d = a bitand b;
	printf("\n\n=====Start of program\n\n");
	printf("a, b, c, d = %d, %d, %d, %d\n", a, b, c, d);

	return EXIT_SUCCESS;
}
