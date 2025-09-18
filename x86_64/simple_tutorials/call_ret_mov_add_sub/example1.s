	.file	"example1.c"
	.text
	.globl	func
	.type	func, @function
func:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$48879, %eax
	popq	%rbp
	ret
	.size	func, .-func
	.globl	main
	.type	main, @function
main:
	pushq	%rbp
	movq	%rsp, %rbp
	call	func
	movl	$61453, %eax
	popq	%rbp
	ret
	.size	main, .-main
	.globl	_start
	.type	_start, @function
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$16, %rsp
	call	main
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %edx
#APP
# 14 "example1.c" 1
	movl %edx, %ebx
movl $1, %eax
int $0x80

# 0 "" 2
#NO_APP
	nop
	movq	-8(%rbp), %rbx
	leave
	ret
	.size	_start, .-_start
	.ident	"GCC: (GNU) 15.2.1 20250813"
	.section	.note.GNU-stack,"",@progbits
