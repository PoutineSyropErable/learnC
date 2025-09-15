#include <stdio.h>

#define type_name(x)                                                           \
    _Generic((x),                                                              \
        int: "int",                                                            \
        float: "float",                                                        \
        double: "double",                                                      \
        default: "other")

int main(void) {
    int a = 5;
    float b = 3.14f;
    double c = 2.718;
    char d = 'x';

    printf("a is %s\n", type_name(a)); // prints "a is int"
    printf("b is %s\n", type_name(b)); // prints "b is float"
    printf("c is %s\n", type_name(c)); // prints "c is double"
    printf("d is %s\n", type_name(d)); // prints "d is other"
}
