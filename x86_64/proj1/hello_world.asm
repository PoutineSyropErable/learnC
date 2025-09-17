
hello_world:     file format elf64-x86-64


Disassembly of section .note.gnu.property:

0000000000000350 <.note.gnu.property>:
 350:	04 00                	add    $0x0,%al
 352:	00 00                	add    %al,(%rax)
 354:	30 00                	xor    %al,(%rax)
 356:	00 00                	add    %al,(%rax)
 358:	05 00 00 00 47       	add    $0x47000000,%eax
 35d:	4e 55                	rex.WRX push %rbp
 35f:	00 02                	add    %al,(%rdx)
 361:	80 00 c0             	addb   $0xc0,(%rax)
 364:	04 00                	add    $0x0,%al
 366:	00 00                	add    %al,(%rax)
 368:	01 00                	add    %eax,(%rax)
 36a:	00 00                	add    %al,(%rax)
 36c:	00 00                	add    %al,(%rax)
 36e:	00 00                	add    %al,(%rax)
 370:	01 00                	add    %eax,(%rax)
 372:	01 c0                	add    %eax,%eax
 374:	04 00                	add    $0x0,%al
 376:	00 00                	add    %al,(%rax)
 378:	01 00                	add    %eax,(%rax)
 37a:	00 00                	add    %al,(%rax)
 37c:	00 00                	add    %al,(%rax)
 37e:	00 00                	add    %al,(%rax)
 380:	02 00                	add    (%rax),%al
 382:	01 c0                	add    %eax,%eax
 384:	04 00                	add    $0x0,%al
 386:	00 00                	add    %al,(%rax)
 388:	01 00                	add    %eax,(%rax)
 38a:	00 00                	add    %al,(%rax)
 38c:	00 00                	add    %al,(%rax)
	...

Disassembly of section .note.gnu.build-id:

0000000000000390 <.note.gnu.build-id>:
 390:	04 00                	add    $0x0,%al
 392:	00 00                	add    %al,(%rax)
 394:	14 00                	adc    $0x0,%al
 396:	00 00                	add    %al,(%rax)
 398:	03 00                	add    (%rax),%eax
 39a:	00 00                	add    %al,(%rax)
 39c:	47                   	rex.RXB
 39d:	4e 55                	rex.WRX push %rbp
 39f:	00 30                	add    %dh,(%rax)
 3a1:	f7 b0 cd 40 ef 3f    	divl   0x3fef40cd(%rax)
 3a7:	63 29                	movsxd (%rcx),%ebp
 3a9:	5a                   	pop    %rdx
 3aa:	05 b7 f6 7f 01       	add    $0x17ff6b7,%eax
 3af:	87 38                	xchg   %edi,(%rax)
 3b1:	68                   	.byte 0x68
 3b2:	b1 f4                	mov    $0xf4,%cl

Disassembly of section .interp:

00000000000003b4 <.interp>:
 3b4:	2f                   	(bad)
 3b5:	6c                   	insb   (%dx),(%rdi)
 3b6:	69 62 36 34 2f 6c 64 	imul   $0x646c2f34,0x36(%rdx),%esp
 3bd:	2d 6c 69 6e 75       	sub    $0x756e696c,%eax
 3c2:	78 2d                	js     3f1 <_init-0xc0f>
 3c4:	78 38                	js     3fe <_init-0xc02>
 3c6:	36 2d 36 34 2e 73    	ss sub $0x732e3436,%eax
 3cc:	6f                   	outsl  (%rsi),(%dx)
 3cd:	2e 32 00             	cs xor (%rax),%al

Disassembly of section .gnu.hash:

00000000000003d0 <.gnu.hash>:
 3d0:	01 00                	add    %eax,(%rax)
 3d2:	00 00                	add    %al,(%rax)
 3d4:	01 00                	add    %eax,(%rax)
 3d6:	00 00                	add    %al,(%rax)
 3d8:	01 00                	add    %eax,(%rax)
	...

Disassembly of section .dynsym:

00000000000003f0 <.dynsym>:
	...
 408:	06                   	(bad)
 409:	00 00                	add    %al,(%rax)
 40b:	00 12                	add    %dl,(%rdx)
	...
 41d:	00 00                	add    %al,(%rax)
 41f:	00 48 00             	add    %cl,0x0(%rax)
 422:	00 00                	add    %al,(%rax)
 424:	20 00                	and    %al,(%rax)
	...
 436:	00 00                	add    %al,(%rax)
 438:	01 00                	add    %eax,(%rax)
 43a:	00 00                	add    %al,(%rax)
 43c:	12 00                	adc    (%rax),%al
	...
 44e:	00 00                	add    %al,(%rax)
 450:	64 00 00             	add    %al,%fs:(%rax)
 453:	00 20                	add    %ah,(%rax)
	...
 465:	00 00                	add    %al,(%rax)
 467:	00 73 00             	add    %dh,0x0(%rbx)
 46a:	00 00                	add    %al,(%rax)
 46c:	20 00                	and    %al,(%rax)
	...
 47e:	00 00                	add    %al,(%rax)
 480:	18 00                	sbb    %al,(%rax)
 482:	00 00                	add    %al,(%rax)
 484:	22 00                	and    (%rax),%al
	...

Disassembly of section .dynstr:

0000000000000498 <.dynstr>:
 498:	00 70 75             	add    %dh,0x75(%rax)
 49b:	74 73                	je     510 <_init-0xaf0>
 49d:	00 5f 5f             	add    %bl,0x5f(%rdi)
 4a0:	6c                   	insb   (%dx),(%rdi)
 4a1:	69 62 63 5f 73 74 61 	imul   $0x6174735f,0x63(%rdx),%esp
 4a8:	72 74                	jb     51e <_init-0xae2>
 4aa:	5f                   	pop    %rdi
 4ab:	6d                   	insl   (%dx),(%rdi)
 4ac:	61                   	(bad)
 4ad:	69 6e 00 5f 5f 63 78 	imul   $0x78635f5f,0x0(%rsi),%ebp
 4b4:	61                   	(bad)
 4b5:	5f                   	pop    %rdi
 4b6:	66 69 6e 61 6c 69    	imul   $0x696c,0x61(%rsi),%bp
 4bc:	7a 65                	jp     523 <_init-0xadd>
 4be:	00 6c 69 62          	add    %ch,0x62(%rcx,%rbp,2)
 4c2:	63 2e                	movsxd (%rsi),%ebp
 4c4:	73 6f                	jae    535 <_init-0xacb>
 4c6:	2e 36 00 47 4c       	cs ss add %al,0x4c(%rdi)
 4cb:	49                   	rex.WB
 4cc:	42                   	rex.X
 4cd:	43 5f                	rex.XB pop %r15
 4cf:	32 2e                	xor    (%rsi),%ch
 4d1:	32 2e                	xor    (%rsi),%ch
 4d3:	35 00 47 4c 49       	xor    $0x494c4700,%eax
 4d8:	42                   	rex.X
 4d9:	43 5f                	rex.XB pop %r15
 4db:	32 2e                	xor    (%rsi),%ch
 4dd:	33 34 00             	xor    (%rax,%rax,1),%esi
 4e0:	5f                   	pop    %rdi
 4e1:	49 54                	rex.WB push %r12
 4e3:	4d 5f                	rex.WRB pop %r15
 4e5:	64 65 72 65          	fs gs jb 54e <_init-0xab2>
 4e9:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%ebx),%esi
 4f0:	4d 
 4f1:	43 6c                	rex.XB insb (%dx),(%rdi)
 4f3:	6f                   	outsl  (%rsi),(%dx)
 4f4:	6e                   	outsb  (%rsi),(%dx)
 4f5:	65 54                	gs push %rsp
 4f7:	61                   	(bad)
 4f8:	62 6c 65 00 5f       	(bad)
 4fd:	5f                   	pop    %rdi
 4fe:	67 6d                	insl   (%dx),(%edi)
 500:	6f                   	outsl  (%rsi),(%dx)
 501:	6e                   	outsb  (%rsi),(%dx)
 502:	5f                   	pop    %rdi
 503:	73 74                	jae    579 <_init-0xa87>
 505:	61                   	(bad)
 506:	72 74                	jb     57c <_init-0xa84>
 508:	5f                   	pop    %rdi
 509:	5f                   	pop    %rdi
 50a:	00 5f 49             	add    %bl,0x49(%rdi)
 50d:	54                   	push   %rsp
 50e:	4d 5f                	rex.WRB pop %r15
 510:	72 65                	jb     577 <_init-0xa89>
 512:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%ebx),%esi
 519:	4d 
 51a:	43 6c                	rex.XB insb (%dx),(%rdi)
 51c:	6f                   	outsl  (%rsi),(%dx)
 51d:	6e                   	outsb  (%rsi),(%dx)
 51e:	65 54                	gs push %rsp
 520:	61                   	(bad)
 521:	62                   	.byte 0x62
 522:	6c                   	insb   (%dx),(%rdi)
 523:	65                   	gs
	...

Disassembly of section .gnu.version:

0000000000000526 <.gnu.version>:
 526:	00 00                	add    %al,(%rax)
 528:	02 00                	add    (%rax),%al
 52a:	01 00                	add    %eax,(%rax)
 52c:	03 00                	add    (%rax),%eax
 52e:	01 00                	add    %eax,(%rax)
 530:	01 00                	add    %eax,(%rax)
 532:	03 00                	add    (%rax),%eax

Disassembly of section .gnu.version_r:

0000000000000538 <.gnu.version_r>:
 538:	01 00                	add    %eax,(%rax)
 53a:	02 00                	add    (%rax),%al
 53c:	27                   	(bad)
 53d:	00 00                	add    %al,(%rax)
 53f:	00 10                	add    %dl,(%rax)
 541:	00 00                	add    %al,(%rax)
 543:	00 00                	add    %al,(%rax)
 545:	00 00                	add    %al,(%rax)
 547:	00 75 1a             	add    %dh,0x1a(%rbp)
 54a:	69 09 00 00 03 00    	imul   $0x30000,(%rcx),%ecx
 550:	31 00                	xor    %eax,(%rax)
 552:	00 00                	add    %al,(%rax)
 554:	10 00                	adc    %al,(%rax)
 556:	00 00                	add    %al,(%rax)
 558:	b4 91                	mov    $0x91,%ah
 55a:	96                   	xchg   %eax,%esi
 55b:	06                   	(bad)
 55c:	00 00                	add    %al,(%rax)
 55e:	02 00                	add    (%rax),%al
 560:	3d 00 00 00 00       	cmp    $0x0,%eax
 565:	00 00                	add    %al,(%rax)
	...

Disassembly of section .rela.dyn:

0000000000000568 <.rela.dyn>:
 568:	d0 3d 00 00 00 00    	sarb   $1,0x0(%rip)        # 56e <_init-0xa92>
 56e:	00 00                	add    %al,(%rax)
 570:	08 00                	or     %al,(%rax)
 572:	00 00                	add    %al,(%rax)
 574:	00 00                	add    %al,(%rax)
 576:	00 00                	add    %al,(%rax)
 578:	30 11                	xor    %dl,(%rcx)
 57a:	00 00                	add    %al,(%rax)
 57c:	00 00                	add    %al,(%rax)
 57e:	00 00                	add    %al,(%rax)
 580:	d8 3d 00 00 00 00    	fdivrs 0x0(%rip)        # 586 <_init-0xa7a>
 586:	00 00                	add    %al,(%rax)
 588:	08 00                	or     %al,(%rax)
 58a:	00 00                	add    %al,(%rax)
 58c:	00 00                	add    %al,(%rax)
 58e:	00 00                	add    %al,(%rax)
 590:	e0 10                	loopne 5a2 <_init-0xa5e>
 592:	00 00                	add    %al,(%rax)
 594:	00 00                	add    %al,(%rax)
 596:	00 00                	add    %al,(%rax)
 598:	10 40 00             	adc    %al,0x0(%rax)
 59b:	00 00                	add    %al,(%rax)
 59d:	00 00                	add    %al,(%rax)
 59f:	00 08                	add    %cl,(%rax)
 5a1:	00 00                	add    %al,(%rax)
 5a3:	00 00                	add    %al,(%rax)
 5a5:	00 00                	add    %al,(%rax)
 5a7:	00 10                	add    %dl,(%rax)
 5a9:	40 00 00             	rex add %al,(%rax)
 5ac:	00 00                	add    %al,(%rax)
 5ae:	00 00                	add    %al,(%rax)
 5b0:	c0 3f 00             	sarb   $0x0,(%rdi)
 5b3:	00 00                	add    %al,(%rax)
 5b5:	00 00                	add    %al,(%rax)
 5b7:	00 06                	add    %al,(%rsi)
 5b9:	00 00                	add    %al,(%rax)
 5bb:	00 01                	add    %al,(%rcx)
	...
 5c5:	00 00                	add    %al,(%rax)
 5c7:	00 c8                	add    %cl,%al
 5c9:	3f                   	(bad)
 5ca:	00 00                	add    %al,(%rax)
 5cc:	00 00                	add    %al,(%rax)
 5ce:	00 00                	add    %al,(%rax)
 5d0:	06                   	(bad)
 5d1:	00 00                	add    %al,(%rax)
 5d3:	00 02                	add    %al,(%rdx)
	...
 5dd:	00 00                	add    %al,(%rax)
 5df:	00 d0                	add    %dl,%al
 5e1:	3f                   	(bad)
 5e2:	00 00                	add    %al,(%rax)
 5e4:	00 00                	add    %al,(%rax)
 5e6:	00 00                	add    %al,(%rax)
 5e8:	06                   	(bad)
 5e9:	00 00                	add    %al,(%rax)
 5eb:	00 04 00             	add    %al,(%rax,%rax,1)
	...
 5f6:	00 00                	add    %al,(%rax)
 5f8:	d8 3f                	fdivrs (%rdi)
 5fa:	00 00                	add    %al,(%rax)
 5fc:	00 00                	add    %al,(%rax)
 5fe:	00 00                	add    %al,(%rax)
 600:	06                   	(bad)
 601:	00 00                	add    %al,(%rax)
 603:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 609 <_init-0x9f7>
 609:	00 00                	add    %al,(%rax)
 60b:	00 00                	add    %al,(%rax)
 60d:	00 00                	add    %al,(%rax)
 60f:	00 e0                	add    %ah,%al
 611:	3f                   	(bad)
 612:	00 00                	add    %al,(%rax)
 614:	00 00                	add    %al,(%rax)
 616:	00 00                	add    %al,(%rax)
 618:	06                   	(bad)
 619:	00 00                	add    %al,(%rax)
 61b:	00 06                	add    %al,(%rsi)
	...

Disassembly of section .rela.plt:

0000000000000628 <.rela.plt>:
 628:	00 40 00             	add    %al,0x0(%rax)
 62b:	00 00                	add    %al,(%rax)
 62d:	00 00                	add    %al,(%rax)
 62f:	00 07                	add    %al,(%rdi)
 631:	00 00                	add    %al,(%rax)
 633:	00 03                	add    %al,(%rbx)
	...

Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 c1 2f 00 00 	mov    0x2fc1(%rip),%rax        # 3fd0 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret

Disassembly of section .plt:

0000000000001020 <puts@plt-0x10>:
    1020:	ff 35 ca 2f 00 00    	push   0x2fca(%rip)        # 3ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 cc 2f 00 00    	jmp    *0x2fcc(%rip)        # 3ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <puts@plt>:
    1030:	ff 25 ca 2f 00 00    	jmp    *0x2fca(%rip)        # 4000 <puts@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	push   $0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <_init+0x20>

Disassembly of section .text:

0000000000001040 <_start>:
    1040:	f3 0f 1e fa          	endbr64
    1044:	31 ed                	xor    %ebp,%ebp
    1046:	49 89 d1             	mov    %rdx,%r9
    1049:	5e                   	pop    %rsi
    104a:	48 89 e2             	mov    %rsp,%rdx
    104d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1051:	50                   	push   %rax
    1052:	54                   	push   %rsp
    1053:	45 31 c0             	xor    %r8d,%r8d
    1056:	31 c9                	xor    %ecx,%ecx
    1058:	48 8d 3d da 00 00 00 	lea    0xda(%rip),%rdi        # 1139 <main>
    105f:	ff 15 5b 2f 00 00    	call   *0x2f5b(%rip)        # 3fc0 <__libc_start_main@GLIBC_2.34>
    1065:	f4                   	hlt
    1066:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    106d:	00 00 00 
    1070:	48 8d 3d a1 2f 00 00 	lea    0x2fa1(%rip),%rdi        # 4018 <__TMC_END__>
    1077:	48 8d 05 9a 2f 00 00 	lea    0x2f9a(%rip),%rax        # 4018 <__TMC_END__>
    107e:	48 39 f8             	cmp    %rdi,%rax
    1081:	74 15                	je     1098 <_start+0x58>
    1083:	48 8b 05 3e 2f 00 00 	mov    0x2f3e(%rip),%rax        # 3fc8 <_ITM_deregisterTMCloneTable@Base>
    108a:	48 85 c0             	test   %rax,%rax
    108d:	74 09                	je     1098 <_start+0x58>
    108f:	ff e0                	jmp    *%rax
    1091:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1098:	c3                   	ret
    1099:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10a0:	48 8d 3d 71 2f 00 00 	lea    0x2f71(%rip),%rdi        # 4018 <__TMC_END__>
    10a7:	48 8d 35 6a 2f 00 00 	lea    0x2f6a(%rip),%rsi        # 4018 <__TMC_END__>
    10ae:	48 29 fe             	sub    %rdi,%rsi
    10b1:	48 89 f0             	mov    %rsi,%rax
    10b4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    10b8:	48 c1 f8 03          	sar    $0x3,%rax
    10bc:	48 01 c6             	add    %rax,%rsi
    10bf:	48 d1 fe             	sar    $1,%rsi
    10c2:	74 14                	je     10d8 <_start+0x98>
    10c4:	48 8b 05 0d 2f 00 00 	mov    0x2f0d(%rip),%rax        # 3fd8 <_ITM_registerTMCloneTable@Base>
    10cb:	48 85 c0             	test   %rax,%rax
    10ce:	74 08                	je     10d8 <_start+0x98>
    10d0:	ff e0                	jmp    *%rax
    10d2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    10d8:	c3                   	ret
    10d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10e0:	f3 0f 1e fa          	endbr64
    10e4:	80 3d 2d 2f 00 00 00 	cmpb   $0x0,0x2f2d(%rip)        # 4018 <__TMC_END__>
    10eb:	75 33                	jne    1120 <_start+0xe0>
    10ed:	55                   	push   %rbp
    10ee:	48 83 3d ea 2e 00 00 	cmpq   $0x0,0x2eea(%rip)        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    10f5:	00 
    10f6:	48 89 e5             	mov    %rsp,%rbp
    10f9:	74 0d                	je     1108 <_start+0xc8>
    10fb:	48 8b 3d 0e 2f 00 00 	mov    0x2f0e(%rip),%rdi        # 4010 <__dso_handle>
    1102:	ff 15 d8 2e 00 00    	call   *0x2ed8(%rip)        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    1108:	e8 63 ff ff ff       	call   1070 <_start+0x30>
    110d:	c6 05 04 2f 00 00 01 	movb   $0x1,0x2f04(%rip)        # 4018 <__TMC_END__>
    1114:	5d                   	pop    %rbp
    1115:	c3                   	ret
    1116:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    111d:	00 00 00 
    1120:	c3                   	ret
    1121:	0f 1f 40 00          	nopl   0x0(%rax)
    1125:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    112c:	00 00 00 00 
    1130:	f3 0f 1e fa          	endbr64
    1134:	e9 67 ff ff ff       	jmp    10a0 <_start+0x60>

0000000000001139 <main>:
    1139:	55                   	push   %rbp
    113a:	48 89 e5             	mov    %rsp,%rbp
    113d:	48 8d 05 c0 0e 00 00 	lea    0xec0(%rip),%rax        # 2004 <_IO_stdin_used+0x4>
    1144:	48 89 c7             	mov    %rax,%rdi
    1147:	e8 e4 fe ff ff       	call   1030 <puts@plt>
    114c:	b8 00 00 00 00       	mov    $0x0,%eax
    1151:	5d                   	pop    %rbp
    1152:	c3                   	ret

Disassembly of section .fini:

0000000000001154 <_fini>:
    1154:	f3 0f 1e fa          	endbr64
    1158:	48 83 ec 08          	sub    $0x8,%rsp
    115c:	48 83 c4 08          	add    $0x8,%rsp
    1160:	c3                   	ret

Disassembly of section .rodata:

0000000000002000 <_IO_stdin_used>:
    2000:	01 00                	add    %eax,(%rax)
    2002:	02 00                	add    (%rax),%al
    2004:	48                   	rex.W
    2005:	65 6c                	gs insb (%dx),(%rdi)
    2007:	6c                   	insb   (%dx),(%rdi)
    2008:	6f                   	outsl  (%rsi),(%dx)
    2009:	20 77 6f             	and    %dh,0x6f(%rdi)
    200c:	72 6c                	jb     207a <__GNU_EH_FRAME_HDR+0x6a>
    200e:	64                   	fs
	...

Disassembly of section .eh_frame_hdr:

0000000000002010 <__GNU_EH_FRAME_HDR>:
    2010:	01 1b                	add    %ebx,(%rbx)
    2012:	03 3b                	add    (%rbx),%edi
    2014:	24 00                	and    $0x0,%al
    2016:	00 00                	add    %al,(%rax)
    2018:	03 00                	add    (%rax),%eax
    201a:	00 00                	add    %al,(%rax)
    201c:	10 f0                	adc    %dh,%al
    201e:	ff                   	(bad)
    201f:	ff 58 00             	lcall  *0x0(%rax)
    2022:	00 00                	add    %al,(%rax)
    2024:	30 f0                	xor    %dh,%al
    2026:	ff                   	(bad)
    2027:	ff 40 00             	incl   0x0(%rax)
    202a:	00 00                	add    %al,(%rax)
    202c:	29 f1                	sub    %esi,%ecx
    202e:	ff                   	(bad)
    202f:	ff                   	.byte 0xff
    2030:	80 00 00             	addb   $0x0,(%rax)
	...

Disassembly of section .eh_frame:

0000000000002038 <.eh_frame>:
    2038:	14 00                	adc    $0x0,%al
    203a:	00 00                	add    %al,(%rax)
    203c:	00 00                	add    %al,(%rax)
    203e:	00 00                	add    %al,(%rax)
    2040:	01 7a 52             	add    %edi,0x52(%rdx)
    2043:	00 01                	add    %al,(%rcx)
    2045:	78 10                	js     2057 <__GNU_EH_FRAME_HDR+0x47>
    2047:	01 1b                	add    %ebx,(%rbx)
    2049:	0c 07                	or     $0x7,%al
    204b:	08 90 01 00 00 14    	or     %dl,0x14000001(%rax)
    2051:	00 00                	add    %al,(%rax)
    2053:	00 1c 00             	add    %bl,(%rax,%rax,1)
    2056:	00 00                	add    %al,(%rax)
    2058:	e8 ef ff ff 26       	call   2700204c <_end+0x26ffe02c>
    205d:	00 00                	add    %al,(%rax)
    205f:	00 00                	add    %al,(%rax)
    2061:	44 07                	rex.R (bad)
    2063:	10 00                	adc    %al,(%rax)
    2065:	00 00                	add    %al,(%rax)
    2067:	00 24 00             	add    %ah,(%rax,%rax,1)
    206a:	00 00                	add    %al,(%rax)
    206c:	34 00                	xor    $0x0,%al
    206e:	00 00                	add    %al,(%rax)
    2070:	b0 ef                	mov    $0xef,%al
    2072:	ff                   	(bad)
    2073:	ff 20                	jmp    *(%rax)
    2075:	00 00                	add    %al,(%rax)
    2077:	00 00                	add    %al,(%rax)
    2079:	0e                   	(bad)
    207a:	10 46 0e             	adc    %al,0xe(%rsi)
    207d:	18 4a 0f             	sbb    %cl,0xf(%rdx)
    2080:	0b 77 08             	or     0x8(%rdi),%esi
    2083:	80 00 3f             	addb   $0x3f,(%rax)
    2086:	1a 3b                	sbb    (%rbx),%bh
    2088:	2a 33                	sub    (%rbx),%dh
    208a:	24 22                	and    $0x22,%al
    208c:	00 00                	add    %al,(%rax)
    208e:	00 00                	add    %al,(%rax)
    2090:	1c 00                	sbb    $0x0,%al
    2092:	00 00                	add    %al,(%rax)
    2094:	5c                   	pop    %rsp
    2095:	00 00                	add    %al,(%rax)
    2097:	00 a1 f0 ff ff 1a    	add    %ah,0x1afffff0(%rcx)
    209d:	00 00                	add    %al,(%rax)
    209f:	00 00                	add    %al,(%rax)
    20a1:	41 0e                	rex.B (bad)
    20a3:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
    20a9:	55                   	push   %rbp
    20aa:	0c 07                	or     $0x7,%al
    20ac:	08 00                	or     %al,(%rax)
    20ae:	00 00                	add    %al,(%rax)
    20b0:	00 00                	add    %al,(%rax)
	...

Disassembly of section .note.ABI-tag:

00000000000020b4 <.note.ABI-tag>:
    20b4:	04 00                	add    $0x0,%al
    20b6:	00 00                	add    %al,(%rax)
    20b8:	10 00                	adc    %al,(%rax)
    20ba:	00 00                	add    %al,(%rax)
    20bc:	01 00                	add    %eax,(%rax)
    20be:	00 00                	add    %al,(%rax)
    20c0:	47                   	rex.RXB
    20c1:	4e 55                	rex.WRX push %rbp
    20c3:	00 00                	add    %al,(%rax)
    20c5:	00 00                	add    %al,(%rax)
    20c7:	00 04 00             	add    %al,(%rax,%rax,1)
    20ca:	00 00                	add    %al,(%rax)
    20cc:	04 00                	add    $0x0,%al
    20ce:	00 00                	add    %al,(%rax)
    20d0:	00 00                	add    %al,(%rax)
	...

Disassembly of section .init_array:

0000000000003dd0 <.init_array>:
    3dd0:	30 11                	xor    %dl,(%rcx)
    3dd2:	00 00                	add    %al,(%rax)
    3dd4:	00 00                	add    %al,(%rax)
	...

Disassembly of section .fini_array:

0000000000003dd8 <.fini_array>:
    3dd8:	e0 10                	loopne 3dea <_DYNAMIC+0xa>
    3dda:	00 00                	add    %al,(%rax)
    3ddc:	00 00                	add    %al,(%rax)
	...

Disassembly of section .dynamic:

0000000000003de0 <_DYNAMIC>:
    3de0:	01 00                	add    %eax,(%rax)
    3de2:	00 00                	add    %al,(%rax)
    3de4:	00 00                	add    %al,(%rax)
    3de6:	00 00                	add    %al,(%rax)
    3de8:	27                   	(bad)
    3de9:	00 00                	add    %al,(%rax)
    3deb:	00 00                	add    %al,(%rax)
    3ded:	00 00                	add    %al,(%rax)
    3def:	00 0c 00             	add    %cl,(%rax,%rax,1)
    3df2:	00 00                	add    %al,(%rax)
    3df4:	00 00                	add    %al,(%rax)
    3df6:	00 00                	add    %al,(%rax)
    3df8:	00 10                	add    %dl,(%rax)
    3dfa:	00 00                	add    %al,(%rax)
    3dfc:	00 00                	add    %al,(%rax)
    3dfe:	00 00                	add    %al,(%rax)
    3e00:	0d 00 00 00 00       	or     $0x0,%eax
    3e05:	00 00                	add    %al,(%rax)
    3e07:	00 54 11 00          	add    %dl,0x0(%rcx,%rdx,1)
    3e0b:	00 00                	add    %al,(%rax)
    3e0d:	00 00                	add    %al,(%rax)
    3e0f:	00 19                	add    %bl,(%rcx)
    3e11:	00 00                	add    %al,(%rax)
    3e13:	00 00                	add    %al,(%rax)
    3e15:	00 00                	add    %al,(%rax)
    3e17:	00 d0                	add    %dl,%al
    3e19:	3d 00 00 00 00       	cmp    $0x0,%eax
    3e1e:	00 00                	add    %al,(%rax)
    3e20:	1b 00                	sbb    (%rax),%eax
    3e22:	00 00                	add    %al,(%rax)
    3e24:	00 00                	add    %al,(%rax)
    3e26:	00 00                	add    %al,(%rax)
    3e28:	08 00                	or     %al,(%rax)
    3e2a:	00 00                	add    %al,(%rax)
    3e2c:	00 00                	add    %al,(%rax)
    3e2e:	00 00                	add    %al,(%rax)
    3e30:	1a 00                	sbb    (%rax),%al
    3e32:	00 00                	add    %al,(%rax)
    3e34:	00 00                	add    %al,(%rax)
    3e36:	00 00                	add    %al,(%rax)
    3e38:	d8 3d 00 00 00 00    	fdivrs 0x0(%rip)        # 3e3e <_DYNAMIC+0x5e>
    3e3e:	00 00                	add    %al,(%rax)
    3e40:	1c 00                	sbb    $0x0,%al
    3e42:	00 00                	add    %al,(%rax)
    3e44:	00 00                	add    %al,(%rax)
    3e46:	00 00                	add    %al,(%rax)
    3e48:	08 00                	or     %al,(%rax)
    3e4a:	00 00                	add    %al,(%rax)
    3e4c:	00 00                	add    %al,(%rax)
    3e4e:	00 00                	add    %al,(%rax)
    3e50:	f5                   	cmc
    3e51:	fe                   	(bad)
    3e52:	ff 6f 00             	ljmp   *0x0(%rdi)
    3e55:	00 00                	add    %al,(%rax)
    3e57:	00 d0                	add    %dl,%al
    3e59:	03 00                	add    (%rax),%eax
    3e5b:	00 00                	add    %al,(%rax)
    3e5d:	00 00                	add    %al,(%rax)
    3e5f:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 3e65 <_DYNAMIC+0x85>
    3e65:	00 00                	add    %al,(%rax)
    3e67:	00 98 04 00 00 00    	add    %bl,0x4(%rax)
    3e6d:	00 00                	add    %al,(%rax)
    3e6f:	00 06                	add    %al,(%rsi)
    3e71:	00 00                	add    %al,(%rax)
    3e73:	00 00                	add    %al,(%rax)
    3e75:	00 00                	add    %al,(%rax)
    3e77:	00 f0                	add    %dh,%al
    3e79:	03 00                	add    (%rax),%eax
    3e7b:	00 00                	add    %al,(%rax)
    3e7d:	00 00                	add    %al,(%rax)
    3e7f:	00 0a                	add    %cl,(%rdx)
    3e81:	00 00                	add    %al,(%rax)
    3e83:	00 00                	add    %al,(%rax)
    3e85:	00 00                	add    %al,(%rax)
    3e87:	00 8d 00 00 00 00    	add    %cl,0x0(%rbp)
    3e8d:	00 00                	add    %al,(%rax)
    3e8f:	00 0b                	add    %cl,(%rbx)
    3e91:	00 00                	add    %al,(%rax)
    3e93:	00 00                	add    %al,(%rax)
    3e95:	00 00                	add    %al,(%rax)
    3e97:	00 18                	add    %bl,(%rax)
    3e99:	00 00                	add    %al,(%rax)
    3e9b:	00 00                	add    %al,(%rax)
    3e9d:	00 00                	add    %al,(%rax)
    3e9f:	00 15 00 00 00 00    	add    %dl,0x0(%rip)        # 3ea5 <_DYNAMIC+0xc5>
	...
    3ead:	00 00                	add    %al,(%rax)
    3eaf:	00 03                	add    %al,(%rbx)
    3eb1:	00 00                	add    %al,(%rax)
    3eb3:	00 00                	add    %al,(%rax)
    3eb5:	00 00                	add    %al,(%rax)
    3eb7:	00 e8                	add    %ch,%al
    3eb9:	3f                   	(bad)
    3eba:	00 00                	add    %al,(%rax)
    3ebc:	00 00                	add    %al,(%rax)
    3ebe:	00 00                	add    %al,(%rax)
    3ec0:	02 00                	add    (%rax),%al
    3ec2:	00 00                	add    %al,(%rax)
    3ec4:	00 00                	add    %al,(%rax)
    3ec6:	00 00                	add    %al,(%rax)
    3ec8:	18 00                	sbb    %al,(%rax)
    3eca:	00 00                	add    %al,(%rax)
    3ecc:	00 00                	add    %al,(%rax)
    3ece:	00 00                	add    %al,(%rax)
    3ed0:	14 00                	adc    $0x0,%al
    3ed2:	00 00                	add    %al,(%rax)
    3ed4:	00 00                	add    %al,(%rax)
    3ed6:	00 00                	add    %al,(%rax)
    3ed8:	07                   	(bad)
    3ed9:	00 00                	add    %al,(%rax)
    3edb:	00 00                	add    %al,(%rax)
    3edd:	00 00                	add    %al,(%rax)
    3edf:	00 17                	add    %dl,(%rdi)
    3ee1:	00 00                	add    %al,(%rax)
    3ee3:	00 00                	add    %al,(%rax)
    3ee5:	00 00                	add    %al,(%rax)
    3ee7:	00 28                	add    %ch,(%rax)
    3ee9:	06                   	(bad)
    3eea:	00 00                	add    %al,(%rax)
    3eec:	00 00                	add    %al,(%rax)
    3eee:	00 00                	add    %al,(%rax)
    3ef0:	07                   	(bad)
    3ef1:	00 00                	add    %al,(%rax)
    3ef3:	00 00                	add    %al,(%rax)
    3ef5:	00 00                	add    %al,(%rax)
    3ef7:	00 68 05             	add    %ch,0x5(%rax)
    3efa:	00 00                	add    %al,(%rax)
    3efc:	00 00                	add    %al,(%rax)
    3efe:	00 00                	add    %al,(%rax)
    3f00:	08 00                	or     %al,(%rax)
    3f02:	00 00                	add    %al,(%rax)
    3f04:	00 00                	add    %al,(%rax)
    3f06:	00 00                	add    %al,(%rax)
    3f08:	c0 00 00             	rolb   $0x0,(%rax)
    3f0b:	00 00                	add    %al,(%rax)
    3f0d:	00 00                	add    %al,(%rax)
    3f0f:	00 09                	add    %cl,(%rcx)
    3f11:	00 00                	add    %al,(%rax)
    3f13:	00 00                	add    %al,(%rax)
    3f15:	00 00                	add    %al,(%rax)
    3f17:	00 18                	add    %bl,(%rax)
    3f19:	00 00                	add    %al,(%rax)
    3f1b:	00 00                	add    %al,(%rax)
    3f1d:	00 00                	add    %al,(%rax)
    3f1f:	00 fb                	add    %bh,%bl
    3f21:	ff                   	(bad)
    3f22:	ff 6f 00             	ljmp   *0x0(%rdi)
    3f25:	00 00                	add    %al,(%rax)
    3f27:	00 00                	add    %al,(%rax)
    3f29:	00 00                	add    %al,(%rax)
    3f2b:	08 00                	or     %al,(%rax)
    3f2d:	00 00                	add    %al,(%rax)
    3f2f:	00 fe                	add    %bh,%dh
    3f31:	ff                   	(bad)
    3f32:	ff 6f 00             	ljmp   *0x0(%rdi)
    3f35:	00 00                	add    %al,(%rax)
    3f37:	00 38                	add    %bh,(%rax)
    3f39:	05 00 00 00 00       	add    $0x0,%eax
    3f3e:	00 00                	add    %al,(%rax)
    3f40:	ff                   	(bad)
    3f41:	ff                   	(bad)
    3f42:	ff 6f 00             	ljmp   *0x0(%rdi)
    3f45:	00 00                	add    %al,(%rax)
    3f47:	00 01                	add    %al,(%rcx)
    3f49:	00 00                	add    %al,(%rax)
    3f4b:	00 00                	add    %al,(%rax)
    3f4d:	00 00                	add    %al,(%rax)
    3f4f:	00 f0                	add    %dh,%al
    3f51:	ff                   	(bad)
    3f52:	ff 6f 00             	ljmp   *0x0(%rdi)
    3f55:	00 00                	add    %al,(%rax)
    3f57:	00 26                	add    %ah,(%rsi)
    3f59:	05 00 00 00 00       	add    $0x0,%eax
    3f5e:	00 00                	add    %al,(%rax)
    3f60:	f9                   	stc
    3f61:	ff                   	(bad)
    3f62:	ff 6f 00             	ljmp   *0x0(%rdi)
    3f65:	00 00                	add    %al,(%rax)
    3f67:	00 03                	add    %al,(%rbx)
	...

Disassembly of section .got:

0000000000003fc0 <.got>:
	...

Disassembly of section .got.plt:

0000000000003fe8 <_GLOBAL_OFFSET_TABLE_>:
    3fe8:	e0 3d                	loopne 4027 <_end+0x7>
	...
    3ffe:	00 00                	add    %al,(%rax)
    4000:	36 10 00             	ss adc %al,(%rax)
    4003:	00 00                	add    %al,(%rax)
    4005:	00 00                	add    %al,(%rax)
	...

Disassembly of section .data:

0000000000004008 <__data_start>:
	...

0000000000004010 <__dso_handle>:
    4010:	10 40 00             	adc    %al,0x0(%rax)
    4013:	00 00                	add    %al,(%rax)
    4015:	00 00                	add    %al,(%rax)
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp (%r8),%spl
   5:	28 47 4e             	sub    %al,0x4e(%rdi)
   8:	55                   	push   %rbp
   9:	29 20                	sub    %esp,(%rax)
   b:	31 35 2e 32 2e 31    	xor    %esi,0x312e322e(%rip)        # 312e323f <_end+0x312df21f>
  11:	20 32                	and    %dh,(%rdx)
  13:	30 32                	xor    %dh,(%rdx)
  15:	35 30 38 31 33       	xor    $0x33313830,%eax
	...

Disassembly of section .debug_aranges:

0000000000000000 <.debug_aranges>:
   0:	2c 00                	sub    $0x0,%al
   2:	00 00                	add    %al,(%rax)
   4:	02 00                	add    (%rax),%al
   6:	00 00                	add    %al,(%rax)
   8:	00 00                	add    %al,(%rax)
   a:	08 00                	or     %al,(%rax)
   c:	00 00                	add    %al,(%rax)
   e:	00 00                	add    %al,(%rax)
  10:	39 11                	cmp    %edx,(%rcx)
  12:	00 00                	add    %al,(%rax)
  14:	00 00                	add    %al,(%rax)
  16:	00 00                	add    %al,(%rax)
  18:	1a 00                	sbb    (%rax),%al
	...

Disassembly of section .debug_info:

0000000000000000 <.debug_info>:
   0:	8d 00                	lea    (%rax),%eax
   2:	00 00                	add    %al,(%rax)
   4:	05 00 01 08 00       	add    $0x80100,%eax
   9:	00 00                	add    %al,(%rax)
   b:	00 02                	add    %al,(%rdx)
   d:	12 00                	adc    (%rax),%al
   f:	00 00                	add    %al,(%rax)
  11:	1d 03 47 16 03       	sbb    $0x3164703,%eax
  16:	00 00                	add    %al,(%rax)
  18:	00 00                	add    %al,(%rax)
  1a:	00 0e                	add    %cl,(%rsi)
  1c:	00 00                	add    %al,(%rax)
  1e:	00 39                	add    %bh,(%rcx)
  20:	11 00                	adc    %eax,(%rax)
  22:	00 00                	add    %al,(%rax)
  24:	00 00                	add    %al,(%rax)
  26:	00 1a                	add    %bl,(%rdx)
	...
  30:	00 00                	add    %al,(%rax)
  32:	00 01                	add    %al,(%rcx)
  34:	08 07                	or     %al,(%rdi)
  36:	00 00                	add    %al,(%rax)
  38:	00 00                	add    %al,(%rax)
  3a:	01 04 07             	add    %eax,(%rdi,%rax,1)
  3d:	05 00 00 00 01       	add    $0x1000000,%eax
  42:	01 08                	add    %ecx,(%rax)
  44:	70 00                	jo     46 <_init-0xfba>
  46:	00 00                	add    %al,(%rax)
  48:	01 02                	add    %eax,(%rdx)
  4a:	07                   	(bad)
  4b:	53                   	push   %rbx
  4c:	00 00                	add    %al,(%rax)
  4e:	00 01                	add    %al,(%rcx)
  50:	01 06                	add    %eax,(%rsi)
  52:	72 00                	jb     54 <_init-0xfac>
  54:	00 00                	add    %al,(%rax)
  56:	01 02                	add    %eax,(%rdx)
  58:	05 66 00 00 00       	add    $0x66,%eax
  5d:	03 04 05 69 6e 74 00 	add    0x746e69(,%rax,1),%eax
  64:	01 08                	add    %ecx,(%rax)
  66:	05 7e 00 00 00       	add    $0x7e,%eax
  6b:	01 01                	add    %eax,(%rcx)
  6d:	06                   	(bad)
  6e:	79 00                	jns    70 <_init-0xf90>
  70:	00 00                	add    %al,(%rax)
  72:	04 87                	add    $0x87,%al
  74:	00 00                	add    %al,(%rax)
  76:	00 01                	add    %al,(%rcx)
  78:	03 05 5d 00 00 00    	add    0x5d(%rip),%eax        # db <_init-0xf25>
  7e:	39 11                	cmp    %edx,(%rcx)
  80:	00 00                	add    %al,(%rax)
  82:	00 00                	add    %al,(%rax)
  84:	00 00                	add    %al,(%rax)
  86:	1a 00                	sbb    (%rax),%al
  88:	00 00                	add    %al,(%rax)
  8a:	00 00                	add    %al,(%rax)
  8c:	00 00                	add    %al,(%rax)
  8e:	01                   	.byte 0x1
  8f:	9c                   	pushf
	...

Disassembly of section .debug_abbrev:

0000000000000000 <.debug_abbrev>:
   0:	01 24 00             	add    %esp,(%rax,%rax,1)
   3:	0b 0b                	or     (%rbx),%ecx
   5:	3e 0b 03             	ds or  (%rbx),%eax
   8:	0e                   	(bad)
   9:	00 00                	add    %al,(%rax)
   b:	02 11                	add    (%rcx),%dl
   d:	01 25 0e 13 0b 90    	add    %esp,-0x6ff4ecf2(%rip)        # ffffffff900b1321 <_end+0xffffffff900ad301>
  13:	01 0b                	add    %ecx,(%rbx)
  15:	91                   	xchg   %eax,%ecx
  16:	01 06                	add    %eax,(%rsi)
  18:	03 1f                	add    (%rdi),%ebx
  1a:	1b 1f                	sbb    (%rdi),%ebx
  1c:	11 01                	adc    %eax,(%rcx)
  1e:	12 07                	adc    (%rdi),%al
  20:	10 17                	adc    %dl,(%rdi)
  22:	00 00                	add    %al,(%rax)
  24:	03 24 00             	add    (%rax,%rax,1),%esp
  27:	0b 0b                	or     (%rbx),%ecx
  29:	3e 0b 03             	ds or  (%rbx),%eax
  2c:	08 00                	or     %al,(%rax)
  2e:	00 04 2e             	add    %al,(%rsi,%rbp,1)
  31:	00 3f                	add    %bh,(%rdi)
  33:	19 03                	sbb    %eax,(%rbx)
  35:	0e                   	(bad)
  36:	3a 0b                	cmp    (%rbx),%cl
  38:	3b 0b                	cmp    (%rbx),%ecx
  3a:	39 0b                	cmp    %ecx,(%rbx)
  3c:	27                   	(bad)
  3d:	19 49 13             	sbb    %ecx,0x13(%rcx)
  40:	11 01                	adc    %eax,(%rcx)
  42:	12 07                	adc    (%rdi),%al
  44:	40 18 7c 19 00       	sbb    %dil,0x0(%rcx,%rbx,1)
	...

Disassembly of section .debug_line:

0000000000000000 <.debug_line>:
   0:	4c 00 00             	rex.WR add %r8b,(%rax)
   3:	00 05 00 08 00 2a    	add    %al,0x2a000800(%rip)        # 2a000809 <_end+0x29ffc7e9>
   9:	00 00                	add    %al,(%rax)
   b:	00 01                	add    %al,(%rcx)
   d:	01 01                	add    %eax,(%rcx)
   f:	fb                   	sti
  10:	0e                   	(bad)
  11:	0d 00 01 01 01       	or     $0x1010100,%eax
  16:	01 00                	add    %eax,(%rax)
  18:	00 00                	add    %al,(%rax)
  1a:	01 00                	add    %eax,(%rax)
  1c:	00 01                	add    %al,(%rcx)
  1e:	01 01                	add    %eax,(%rcx)
  20:	1f                   	(bad)
  21:	01 0e                	add    %ecx,(%rsi)
  23:	00 00                	add    %al,(%rax)
  25:	00 02                	add    %al,(%rdx)
  27:	01 1f                	add    %ebx,(%rdi)
  29:	02 0f                	add    (%rdi),%cl
  2b:	02 00                	add    (%rax),%al
	...
  35:	00 05 10 00 09 02    	add    %al,0x2090010(%rip)        # 209004b <_end+0x208c02b>
  3b:	39 11                	cmp    %edx,(%rcx)
  3d:	00 00                	add    %al,(%rax)
  3f:	00 00                	add    %al,(%rax)
  41:	00 00                	add    %al,(%rax)
  43:	14 05                	adc    $0x5,%al
  45:	02 4c 05 01          	add    0x1(%rbp,%rax,1),%cl
  49:	08 3d 02 02 00 01    	or     %bh,0x1000202(%rip)        # 1000251 <_end+0xffc231>
  4f:	01                   	.byte 0x1

Disassembly of section .debug_str:

0000000000000000 <.debug_str>:
   0:	6c                   	insb   (%dx),(%rdi)
   1:	6f                   	outsl  (%rsi),(%dx)
   2:	6e                   	outsb  (%rsi),(%dx)
   3:	67 20 75 6e          	and    %dh,0x6e(%ebp)
   7:	73 69                	jae    72 <_init-0xf8e>
   9:	67 6e                	outsb  (%esi),(%dx)
   b:	65 64 20 69 6e       	gs and %ch,%fs:0x6e(%rcx)
  10:	74 00                	je     12 <_init-0xfee>
  12:	47                   	rex.RXB
  13:	4e 55                	rex.WRX push %rbp
  15:	20 43 32             	and    %al,0x32(%rbx)
  18:	33 20                	xor    (%rax),%esp
  1a:	31 35 2e 32 2e 31    	xor    %esi,0x312e322e(%rip)        # 312e324e <_end+0x312df22e>
  20:	20 32                	and    %dh,(%rdx)
  22:	30 32                	xor    %dh,(%rdx)
  24:	35 30 38 31 33       	xor    $0x33313830,%eax
  29:	20 2d 6d 74 75 6e    	and    %ch,0x6e75746d(%rip)        # 6e75749c <_end+0x6e75347c>
  2f:	65 3d 67 65 6e 65    	gs cmp $0x656e6567,%eax
  35:	72 69                	jb     a0 <_init-0xf60>
  37:	63 20                	movsxd (%rax),%esp
  39:	2d 6d 61 72 63       	sub    $0x6372616d,%eax
  3e:	68 3d 78 38 36       	push   $0x3638783d
  43:	2d 36 34 20 2d       	sub    $0x2d203436,%eax
  48:	67 20 2d 73 74 64 3d 	and    %ch,0x3d647473(%eip)        # 3d6474c2 <_end+0x3d6434a2>
  4f:	63 32                	movsxd (%rdx),%esi
  51:	33 00                	xor    (%rax),%eax
  53:	73 68                	jae    bd <_init-0xf43>
  55:	6f                   	outsl  (%rsi),(%dx)
  56:	72 74                	jb     cc <_init-0xf34>
  58:	20 75 6e             	and    %dh,0x6e(%rbp)
  5b:	73 69                	jae    c6 <_init-0xf3a>
  5d:	67 6e                	outsb  (%esi),(%dx)
  5f:	65 64 20 69 6e       	gs and %ch,%fs:0x6e(%rcx)
  64:	74 00                	je     66 <_init-0xf9a>
  66:	73 68                	jae    d0 <_init-0xf30>
  68:	6f                   	outsl  (%rsi),(%dx)
  69:	72 74                	jb     df <_init-0xf21>
  6b:	20 69 6e             	and    %ch,0x6e(%rcx)
  6e:	74 00                	je     70 <_init-0xf90>
  70:	75 6e                	jne    e0 <_init-0xf20>
  72:	73 69                	jae    dd <_init-0xf23>
  74:	67 6e                	outsb  (%esi),(%dx)
  76:	65 64 20 63 68       	gs and %ah,%fs:0x68(%rbx)
  7b:	61                   	(bad)
  7c:	72 00                	jb     7e <_init-0xf82>
  7e:	6c                   	insb   (%dx),(%rdi)
  7f:	6f                   	outsl  (%rsi),(%dx)
  80:	6e                   	outsb  (%rsi),(%dx)
  81:	67 20 69 6e          	and    %ch,0x6e(%ecx)
  85:	74 00                	je     87 <_init-0xf79>
  87:	6d                   	insl   (%dx),(%rdi)
  88:	61                   	(bad)
  89:	69                   	.byte 0x69
  8a:	6e                   	outsb  (%rsi),(%dx)
	...

Disassembly of section .debug_line_str:

0000000000000000 <.debug_line_str>:
   0:	68 65 6c 6c 6f       	push   $0x6f6c6c65
   5:	5f                   	pop    %rdi
   6:	77 6f                	ja     77 <_init-0xf89>
   8:	72 6c                	jb     76 <_init-0xf8a>
   a:	64 2e 63 00          	fs movsxd %fs:(%rax),%eax
   e:	2f                   	(bad)
   f:	68 6f 6d 65 2f       	push   $0x2f656d6f
  14:	66 72 61             	data16 jb 78 <_init-0xf88>
  17:	6e                   	outsb  (%rsi),(%dx)
  18:	63 6f 69             	movsxd 0x69(%rdi),%ebp
  1b:	73 2f                	jae    4c <_init-0xfb4>
  1d:	44 6f                	rex.R outsl (%rsi),(%dx)
  1f:	63 75 6d             	movsxd 0x6d(%rbp),%esi
  22:	65 6e                	outsb  %gs:(%rsi),(%dx)
  24:	74 73                	je     99 <_init-0xf67>
  26:	2f                   	(bad)
  27:	7a 7a                	jp     a3 <_init-0xf5d>
  29:	7a 5f                	jp     8a <_init-0xf76>
  2b:	5f                   	pop    %rdi
  2c:	50                   	push   %rax
  2d:	65 72 73             	gs jb  a3 <_init-0xf5d>
  30:	6f                   	outsl  (%rsi),(%dx)
  31:	6e                   	outsb  (%rsi),(%dx)
  32:	61                   	(bad)
  33:	6c                   	insb   (%dx),(%rdi)
  34:	50                   	push   %rax
  35:	72 6f                	jb     a6 <_init-0xf5a>
  37:	6a 65                	push   $0x65
  39:	63 74 73 2f          	movsxd 0x2f(%rbx,%rsi,2),%esi
  3d:	4c                   	rex.WR
  3e:	65 61                	gs (bad)
  40:	72 6e                	jb     b0 <_init-0xf50>
  42:	20 43 20             	and    %al,0x20(%rbx)
  45:	41 6e                	rex.B outsb (%rsi),(%dx)
  47:	64 20 41 73          	and    %al,%fs:0x73(%rcx)
  4b:	73 65                	jae    b2 <_init-0xf4e>
  4d:	6d                   	insl   (%dx),(%rdi)
  4e:	62 6c 79 2f 45       	(bad)
  53:	78 65                	js     ba <_init-0xf46>
  55:	72 63                	jb     ba <_init-0xf46>
  57:	69 73 65 73 2f 78 38 	imul   $0x38782f73,0x65(%rbx),%esi
  5e:	36 5f                	ss pop %rdi
  60:	36 34 2f             	ss xor $0x2f,%al
  63:	70 72                	jo     d7 <_init-0xf29>
  65:	6f                   	outsl  (%rsi),(%dx)
  66:	6a 31                	push   $0x31
	...
