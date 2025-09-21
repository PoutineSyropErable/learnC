#include <stdio.h>

int main(void) {
	goto mylabel;
	// should use the jmp instruction
	printf("skipped\n");

mylabel:
	printf("goto ftw!\n");
	return 0xb01dface;
	// sadly, this doesn't use goto
}
