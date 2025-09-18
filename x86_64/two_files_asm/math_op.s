.intel_syntax noprefix
.global math_op
.type math_op, @function

math_op:
    # rdi contains x
    mov rax, rdi   # move x to rax
    imul rax, 3    # multiply by 3
    add rax, 7     # add 7
    ret

