// #define bad

const char *ptr = "Hello";
char const *ptr1 = "Hello"; // prefer this
// Read only, constant value

#ifdef bad
ptr1[2] = "c";
#endif

char some_buffer[20] = "abc";
char *const ptr2 = some_buffer;
char *const *ptr5; // this is a pointer to a pointer. *ptr5 = &address. but
                   // *ptr5 can be changed to another address
// Not reassignable, constant pointer

#ifdef bad
char another_buffer[15] = "123";
ptr2 = another_buffer;
#endif

const char *const ptr4 = "123";
// Not reassignable, read only
// constant pointer, of constant char value

char const *const prt5 = "124";
#ifdef bad
const *const char prt6 = "i";
#endif

#ifdef bad
prt4 = "1234";
prt4[2] = "c";
#endif
