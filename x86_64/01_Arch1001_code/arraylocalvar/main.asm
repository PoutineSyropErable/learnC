
main.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <main>:
   0:	55                   	push   rbp
   1:	48 89 e5             	mov    rbp,rsp

   4:	48 83 ec 30          	sub    rsp,0x30
   8:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
   f:	00 00 
  11:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  15:	31 c0                	xor    eax,eax
  17:	66 c7 45 d6 be ba    	mov    WORD PTR [rbp-0x2a],0xbabe
  1d:	48 b8 0d 10 db 1e ab 	movabs rax,0xba1b0ab1edb100d
  24:	b0 a1 0b 
  27:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
  2b:	0f bf 45 d6          	movsx  eax,WORD PTR [rbp-0x2a]
  2f:	89 45 e4             	mov    DWORD PTR [rbp-0x1c],eax
  32:	8b 45 e4             	mov    eax,DWORD PTR [rbp-0x1c]
  35:	89 c2                	mov    edx,eax
  37:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  3b:	01 d0                	add    eax,edx
  3d:	89 45 f0             	mov    DWORD PTR [rbp-0x10],eax
  40:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  43:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
  47:	64 48 2b 14 25 28 00 	sub    rdx,QWORD PTR fs:0x28
  4e:	00 00 
  50:	74 05                	je     57 <main+0x57>
  52:	e8 00 00 00 00       	call   57 <main+0x57>
  57:	c9                   	leave
  58:	c3                   	ret
