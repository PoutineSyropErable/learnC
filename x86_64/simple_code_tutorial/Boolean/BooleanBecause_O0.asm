
BooleanBecause.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <main>:
   0:	55                   	push   rbp
   1:	48 89 e5             	mov    rbp,rsp
   4:	c7 45 f0 da 50 00 00 	mov    DWORD PTR [rbp-0x10],0x50da
   b:	c7 45 f4 ee ff c0 00 	mov    DWORD PTR [rbp-0xc],0xc0ffee
  12:	48 b8 ed 11 7a 70 ea 	movabs rax,0x7ea707a11ed
  19:	07 00 00 
  1c:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  20:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  23:	23 45 f4             	and    eax,DWORD PTR [rbp-0xc]
  26:	f7 d0                	not    eax
  28:	0d 00 ab 07 00       	or     eax,0x7ab00
  2d:	89 c0                	mov    eax,eax
  2f:	48 31 45 f8          	xor    QWORD PTR [rbp-0x8],rax
  33:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  37:	5d                   	pop    rbp
  38:	c3                   	ret
