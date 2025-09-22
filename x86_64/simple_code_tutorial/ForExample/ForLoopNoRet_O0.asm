
ForLoopNoRet.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <main>:
   0:	55                   	push   rbp
   1:	48 89 e5             	mov    rbp,rsp
   4:	48 83 ec 10          	sub    rsp,0x10
   8:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
   f:	eb 1d                	jmp    2e <main+0x2e>
  11:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  14:	48 8d 15 00 00 00 00 	lea    rdx,[rip+0x0]        # 1b <main+0x1b>
  1b:	89 c6                	mov    esi,eax
  1d:	48 89 d7             	mov    rdi,rdx
  20:	b8 00 00 00 00       	mov    eax,0x0
  25:	e8 00 00 00 00       	call   2a <main+0x2a>
  2a:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
  2e:	83 7d fc 09          	cmp    DWORD PTR [rbp-0x4],0x9
  32:	7e dd                	jle    11 <main+0x11>
  34:	83 6d fc 01          	sub    DWORD PTR [rbp-0x4],0x1
  38:	b8 00 00 00 00       	mov    eax,0x0
  3d:	c9                   	leave
  3e:	c3                   	ret
