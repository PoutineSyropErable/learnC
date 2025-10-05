
TooManyParameters2.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <func>:
   0:	55                   	push   rbp
   1:	48 89 e5             	mov    rbp,rsp
   4:	89 7d ec             	mov    DWORD PTR [rbp-0x14],edi
   7:	89 75 e8             	mov    DWORD PTR [rbp-0x18],esi
   a:	89 55 e4             	mov    DWORD PTR [rbp-0x1c],edx
   d:	89 4d e0             	mov    DWORD PTR [rbp-0x20],ecx
  10:	44 89 45 dc          	mov    DWORD PTR [rbp-0x24],r8d
  14:	44 89 4d d8          	mov    DWORD PTR [rbp-0x28],r9d
  18:	8b 55 ec             	mov    edx,DWORD PTR [rbp-0x14]
  1b:	8b 45 e8             	mov    eax,DWORD PTR [rbp-0x18]
  1e:	01 d0                	add    eax,edx
  20:	2b 45 e4             	sub    eax,DWORD PTR [rbp-0x1c]
  23:	89 c2                	mov    edx,eax
  25:	8b 45 e0             	mov    eax,DWORD PTR [rbp-0x20]
  28:	01 d0                	add    eax,edx
  2a:	2b 45 dc             	sub    eax,DWORD PTR [rbp-0x24]
  2d:	8b 55 d8             	mov    edx,DWORD PTR [rbp-0x28]
  30:	01 d2                	add    edx,edx
  32:	8d 0c 10             	lea    ecx,[rax+rdx*1]
  35:	8b 45 10             	mov    eax,DWORD PTR [rbp+0x10]
  38:	89 c2                	mov    edx,eax
  3a:	c1 e0 02             	shl    eax,0x2
  3d:	29 c2                	sub    edx,eax
  3f:	01 ca                	add    edx,ecx
  41:	8b 45 18             	mov    eax,DWORD PTR [rbp+0x18]
  44:	c1 f8 02             	sar    eax,0x2
  47:	8d 0c 02             	lea    ecx,[rdx+rax*1]
  4a:	8b 45 20             	mov    eax,DWORD PTR [rbp+0x20]
  4d:	48 63 d0             	movsxd rdx,eax
  50:	48 69 d2 56 55 55 55 	imul   rdx,rdx,0x55555556
  57:	48 c1 ea 20          	shr    rdx,0x20
  5b:	c1 f8 1f             	sar    eax,0x1f
  5e:	29 d0                	sub    eax,edx
  60:	01 c8                	add    eax,ecx
  62:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
  65:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  68:	5d                   	pop    rbp
  69:	c3                   	ret

000000000000006a <main>:
  6a:	55                   	push   rbp
  6b:	48 89 e5             	mov    rbp,rsp
  6e:	68 99 00 00 00       	push   0x99		;arg9
  73:	68 88 00 00 00       	push   0x88   	; push always change %rsp by 8. So it's for qword/64 bits
  78:	6a 77                	push   0x77     ; arg7 
  7a:	41 b9 66 00 00 00    	mov    r9d,0x66 ; arg6 
  80:	41 b8 55 00 00 00    	mov    r8d,0x55
  86:	b9 44 00 00 00       	mov    ecx,0x44
  8b:	ba 33 00 00 00       	mov    edx,0x33
  90:	be 22 00 00 00       	mov    esi,0x22
  95:	bf 11 00 00 00       	mov    edi,0x11 ; arg1 
  9a:	e8 00 00 00 00       	call   9f <main+0x35>
  9f:	48 83 c4 18          	add    rsp,0x18 ; 0x18 = 24 = 8*3 
  a3:	c9                   	leave
  a4:	c3                   	ret
