



38 = 16*3 + 8 = 48 + 8 = 56

\= 32 16 8 4 2 1
\= 6   5 4 3 2 1
\= 5   4 3 2 1 0


0011 1000
xor 
0001 0000
\= 
0010 1000 


===
mov rdx, 0xF6D1C29C64E67923
add rdx, 0x8F5BBD71105D5009
movzx rdi, dx

0xF6D1 C29C 64E6 7923
0x8F5B BD71 105D 5009
\= 
rdx = 0x1862 D800 D754 3C92C 
0x1862D800D7543C92C 


dx = 16 bit. = 4 hex 
dx = 0xC92C


movzx : zero extend, don't care about sign. 
but if we did, it wouldn't matter. 3< 8 so not negative. No F extendion

===
mov sil, 0x00000017
sar sil, 0x08

2 hex mov
right -> 

=== 
mov r9w, 0xEA21
mov r8w, 0x1FFF
movzx r11d, r8w

movzx r11d, 0x1FFF 
Already positive. Woulkdnt matter since its a zero extend anyway


==== 
mov r14d, 0x8E1A5FB8
sar r14d, 0x0C

12 / 4 = 3
-> 
divided by 2^12 

0x 8E1A 5FB8

 8 >= 8, hence its negative. It's an arithmetic move. 
So, we care about the sign.   
0xFFF8 E1A5 | FB8
0xFFF8E1A5




====== 
mov r8, 0x00000056
and r8, 0x00000008


0101 0110 
0000 1000 


==== 
mov ecx, 0x81A7 9E77
sar ecx, 0x04

1 hex shift 
right -> 

0xF81A7 9E7 | 7
0xF81A 79E7
0xF81A79E7


=====

mov rdi, 0x53A 3EBD 91E9 06C9E
add rdi, 0xB450 6CCD 4A78 40E4
movzx rdx, di


rdi = 0x1 07F4 58A6 6908 AD82

di: word: 16 bit: 4 hex 

di = 8AD82


===

mov r10, 0x0000000003168CC8
mov rcx, 0x40
sal r10, cl


cl = 8 bits of rcx. = 0x40 : 1 hex
40 not 04. That means 64. 


<- 
0x000000003168CC80
