
ForLoopNoRet.o:     file format elf64-x86-64


Disassembly of section .text.startup:

0000000000000000 <main>:
   0:	53                   	push   rbx
   1:	31 db                	xor    ebx,ebx
   3:	66 90                	xchg   ax,ax
   5:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
   c:	00 00 00 00 
  10:	89 de                	mov    esi,ebx
  12:	48 8d 3d 00 00 00 00 	lea    rdi,[rip+0x0]        # 19 <main+0x19>
  19:	31 c0                	xor    eax,eax
  1b:	83 c3 01             	add    ebx,0x1
  1e:	e8 00 00 00 00       	call   23 <main+0x23>
  23:	83 fb 0a             	cmp    ebx,0xa
  26:	75 e8                	jne    10 <main+0x10>
  28:	31 c0                	xor    eax,eax
  2a:	5b                   	pop    rbx
  2b:	c3                   	ret
