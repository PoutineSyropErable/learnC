#include <stdio.h>
#include <stdlib.h>

// Define DEBUG to enable debug printing
#define DEBUG

// Conditional printf macro
#ifdef DEBUG
#define DPRINTF(...) printf(__VA_ARGS__)
#else
#define DPRINTF(...) ((void)0) // do nothing
#endif

int main(int argc __attribute__((unused)),
         char *argv[] __attribute__((unused))) {

    DPRINTF("Debug info: %d + %d = %d\n", 2, 3, 2 + 3);
    return EXIT_SUCCESS;
}
