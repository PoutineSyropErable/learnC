
TooManyParameters.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <func>:
   0:	55                   	push   rbp
   1:	48 89 e5             	mov    rbp,rsp

   4:	89 7d ec             	mov    DWORD PTR [rbp-0x14],edi ; a
   7:	89 75 e8             	mov    DWORD PTR [rbp-0x18],esi ; b
   a:	89 55 e4             	mov    DWORD PTR [rbp-0x1c],edx ; c
   d:	89 4d e0             	mov    DWORD PTR [rbp-0x20],ecx ; d
  10:	44 89 45 dc          	mov    DWORD PTR [rbp-0x24],r8d ; e

  ; a += b
  14:	8b 55 ec             	mov    edx,DWORD PTR [rbp-0x14] ;a
  17:	8b 45 e8             	mov    eax,DWORD PTR [rbp-0x18] ;b
  1a:	01 d0                	add    eax,edx


  ; a -= c 
  1c:	2b 45 e4             	sub    eax,DWORD PTR [rbp-0x1c] ;c

  ; d+=a; 
  1f:	89 c2                	mov    edx,eax      ; save a
  21:	8b 45 e0             	mov    eax,DWORD PTR [rbp-0x20] ;d
  24:	01 d0                	add    eax,edx      ; d+=a;

  ; d -=e;
  26:	2b 45 dc             	sub    eax,DWORD PTR [rbp-0x24] ; d -=e;

  ; i = d;  (save on memory. with -O0, every variable must have a memory location on stack)
  29:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax  

  ; return i;
  2c:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  2f:	5d                   	pop    rbp
  30:	c3                   	ret

0000000000000031 <main>:
  31:	55                   	push   rbp
  32:	48 89 e5             	mov    rbp,rsp

  ; func(a=0x11, b=0x22, c=0x33, d=0x44, e=0x55)
  35:	41 b8 55 00 00 00    	mov    r8d,0x55 ; size 0x02
  3b:	b9 44 00 00 00       	mov    ecx,0x44 ; size 0x04
  40:	ba 33 00 00 00       	mov    edx,0x33 ; size 0x04
  45:	be 22 00 00 00       	mov    esi,0x22 ; size 0x04
  4a:	bf 11 00 00 00       	mov    edi,0x11 ; size 0x04
  4f:	e8 00 00 00 00       	call   54 <main+0x23>


  54:	5d                   	pop    rbp
  55:	c3                   	ret
