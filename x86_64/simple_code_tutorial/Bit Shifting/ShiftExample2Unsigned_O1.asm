
ShiftExample2Unsigned.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <main>:
   0:	48 83 ec 08          	sub    rsp,0x8
   4:	48 8b 7e 08          	mov    rdi,QWORD PTR [rsi+0x8]
   8:	ba 0a 00 00 00       	mov    edx,0xa
   d:	be 00 00 00 00       	mov    esi,0x0
  12:	e8 00 00 00 00       	call   17 <main+0x17>
  17:	c1 e0 03             	shl    eax,0x3
  1a:	c1 e8 04             	shr    eax,0x4
  1d:	48 83 c4 08          	add    rsp,0x8
  21:	c3                   	ret
