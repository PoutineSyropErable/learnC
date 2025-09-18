


invert all 1s. add 1. 



0 1111 1111 
+1 = 
1 0000 0000 

hence 0-0 = 0.  


 1 0000 0000 
-0 1


minimum: 
-2^(n-1)
2^(n-1) - 1 

1 1111 1111 
^sign. 
sum 2^k_0^7 

1 + 2 + 2² 2³ +2⁴ +2⁵ +2⁶ +2⁷ 
+1  
2 + 2 + 2² + 2³ + 2⁴ + 2⁵ +2⁶ + 2⁷ 

2² + 2² + 2³ + 2⁴ + 2⁵ + 2⁶ + 2⁷ 

2³ + 2³ + 2⁴ + 2⁵ + 2⁶ + 2⁷

2⁴ + 2⁴ + 2⁵ + 2⁶ + 2⁷

2⁵  + 2⁵ + 2⁶ + 2⁷

2⁶ + 2⁶ + 2⁷

2⁷ + 2⁷

2⁸ 

= 2⁸ -1 


m = 8: N bits, 1 sign bits. 
n = n + 1 = 8 + 1 = 9 bits. 

max = 2⁸ -1 = 2^(n-1) -1


===
Proof using modulo:

1 111 1111 
8 bits. last one is sign bits. n = 8. (n-1) = 7


x~ = (2^n -1) -x 
x~ +1 = 2^n -x 

y + x~ +1 = y + 2^n - x  = y - x(mod 2^n)

why is the complement equal to 
1111 1111 
- 
1100 0101 

There's no carry over. 

1 - 0 = 1 
1 - 1 = 0 
= not bitwise. 






====
Questions: 
Assuming 8 byte signed values. 
that's 64 bits. 
1 sign bits. 63 value bits. 

the minimal value is -1 * 2^(63)

====
for 4 bits. 
0 = 
0 000 

-1 = 
0 001 
1 110 
1 111 

-2 = 
0 010 
1 101 
1 110 

6 = 
0 110 
1 001 
1 010 = -6 

7 = 
0 111 
1 000 
1 001 = -7 


1 000 = -8 ? 

1000 000x7


s 421
1 000  


