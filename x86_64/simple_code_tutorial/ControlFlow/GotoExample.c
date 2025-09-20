#include <stdio.h>
int main(void) {
	goto mylabel;
	printf("skipped\n");
mylabel:
	printf("goto ftw!\n");
	return 0xb01dface;
}
