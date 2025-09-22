
ShiftExample2Unsigned.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <main>:
   0:	55                   	push   rbp
   1:	48 89 e5             	mov    rbp,rsp
   4:	48 83 ec 20          	sub    rsp,0x20
   8:	89 7d ec             	mov    DWORD PTR [rbp-0x14],edi
   b:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
   f:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  13:	48 83 c0 08          	add    rax,0x8
  17:	48 8b 00             	mov    rax,QWORD PTR [rax]
  1a:	48 89 c7             	mov    rdi,rax
  1d:	e8 00 00 00 00       	call   22 <main+0x22>
  22:	89 45 f4             	mov    DWORD PTR [rbp-0xc],eax
  25:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  28:	c1 e0 03             	shl    eax,0x3 ; use shl here. To show it's the same opcode
  2b:	89 45 f8             	mov    DWORD PTR [rbp-0x8],eax
  2e:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
  31:	c1 e8 04             	shr    eax,0x4
  34:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
  37:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  3a:	c9                   	leave
  3b:	c3                   	ret
