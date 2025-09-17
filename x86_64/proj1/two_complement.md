


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





