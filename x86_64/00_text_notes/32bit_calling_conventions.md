in 32 bits, there were more calling convention: 

"cdecl" (default for most C code)
- Caller cleans up the stack

"stdcall" (for windows Win32 APIs):
- Callee cleans up the stack. 


Function parameters are pushed onto the stack from right to left. 
left most parameter (the first function parameters), ends up at the lowest address. 

^^That was mips, how it was if you did 
```asm

sub $sp, 8 
sw $a0, 0($sp)
sw $a1, 4($sp)
; make it right to left. 


; or in asm 
push arg3 
push arg2 
push arg1
; make it right to left. 


; --------- Stack ---------
; ==== High address 
arg3 
arg2 
arg1
; ==== Low address 
; --------- Stack ---------



; ====== Left to right example ( Not used here ) ======
push arg1 
push arg2 
push arg3


; --------- Stack ---------
; ==== High address 
arg1
arg2 
arg3 
; ==== Low address 
; --------- Stack ---------

```


---
# Difference between microsoft studio (64 bits) and these 32 bits calling convention

Both cdecl and stdcall conventions perform explicit __explicit stack frame linkage__

the old ebp gets pushed onto the stack. 
the new esp (top of the stack pointer, which now points at the copy of ebp), gets moved into ebp. 


- Oh that's what the code I'm looking at already do




here's a nice trick to obtain the base frame pointer of previous function calls: 

```asm
; typical function prologue:
push rbp ; puts rbp on the stack, rsp points to rbp.    hence rbp == *rsp. 
mov  rbp, rsp
; this makes it so that *rbp = previous rbp. 

push val1 ; these modify rsp, but not rbp
push val2 
push val3 


; hence, we can do a frame chain walking: 
mov r12 rbp ; r12 = rbp 
mov r12, [r12] ; r12 = previous rbp = *rbp
mov r12, [r12] ; r12 = rpb(n-2)
mov r12, [r12] ; r12 = rpb(n-3)
... 


; ===== high address 
...
...
...
&rbp(n-3), value: rbp(n-4)
... 
&rbp(n-2), value: rbp(n-3) ; the address of rbp(n-2), the value at that address is rbp(n-3)
... 
&old rbp, value: rbp(n-2) ;(the address of old rbp). The value of that address is the address of rbp(n-2)
... 
old rbp  <- rbp  ; Here, the value on the stack is the old rbp, which is a memory address. and the current rbp points to that address
val1 
val2
val3   <- rsp
; ===== low address

; where old rbp = rbp(n-1)
; and rbp = rbp(n)


; ----------------
old rbp   <- rbp
; can be written as 
&rbp, value: rbp(n-1)
; or 
&rbp(n), value: rbp(n-1)

; ---- where obviously, &x means at address x. Which is half butchered c. 
```


C code:
../simple_tutorials/orig/stack.c
```c
#include <stdio.h>

int bar(int y) {
	int a = 3 * y;
	printf("bar has returned %d\n", a);
	return a;
}

int foo(int x) {
	int b = 5 * x;
	printf("foo has returned %d\n", b);
	return bar(b);
}

int main() {
	printf("\n\n\n\n");
	int c = foo(7);
	fflush(stdout);
	printf("Main has passed %d\n", c);

	// main frame
	// foo frame
	// bar frame
}


```


Stack frame: 
```asm
; ============ HIGH ADDRESS ===========
return address from main() to invoke_main()
-----------------------------------------
saved ebp                               |
local variable (if any)                 |
callee saved registers                  |
                                        |
# mains calls foo                       |
caller saved registers                  |   main() frame
function arguments                      |
return address foo() to main()          |
# that return address comes from        |
# call foo,                             |
# which also does push rip              |
-----------------------------------------
saved ebp                               |
local variable (if any)                 |
callee saved registers                  |
                                        |
# foo calls bar                         |
caller saved registers                  |   foo() frame
function arguments                      |
return address foo() to main()          |
-----------------------------------------
saved ebp                               |
local variable (if any)                 |
callee saved registers                  |    bar() frame
return address bar() to foo()           |
-----------------------------------------
; ============ LOW ADDRESS ===========
```

Hence, local variable and function arguments might be addressed as :

```asm
caller: 
    
    ; note that these push of the og rdi before the function call is like how in mips, they are at the top of the caller. 
    ; and one right before the function is optional too. 
    push rdi ; save old value of rdi
    push rsi ; save the old value of rsi
    ... ; save the other values
    ; note that this save for another purpose then the mips callee push and pop of function arguments. 
    ; Here, it's to obtain callers' rdi again after the function. 
    ; the mips push was to obtain the myfunc's argument rdi again after. 
    ; which serves a different purpose. and isn't very useful if you use immediates argument paramerters. 
    ; (The mips is useless for immediate. This one here is good)

    mov rdi, 1
    mov rsi, 2 
    mov rdx, 3 
    mov rcx, 4 
    mov r8, 5 
    mov r9, 6 
    push 7 ; other function arguments
    push 8 ;
    ; you wouldn't push rdi... r9 here. You do so inside the function body. 
    ; That is if in the function you need to modify the register, but also access the og variable. 
    ; in which state, the function arguments are local variable of the function. 
    ; hence, a mips like push for rdi... r9 inside function_start
    call function_start

    pop rdi ; restore the old value of rdi
    pop rsi ; restore the old value of rsi
    ... ; restore the other values
    

    ret 
function_start:
    ;prologue 
    push rbp 
    mov rbp, rsp

    ; a push of rdi here 
    ; (if you need to modify rdi, but also access the og rdi.)
    ; In that point of view, it would be like if rdi is a local variable. 
    ; And we do something like a_copy = a (a is var1). Then later access a. 
    ; do it if you need to. But it's not necessary. 
    
    ; local var 
    sub rsp, something 

    mov func_args [ebp-something] ; to access 7, 8
    mov local_var [ebp+something]

    push next_func_arg1_reg
    mov rd1, 1
    call func2
    pop next_func_arg1_reg

    ; and a pop of rdi here 
    ; would only be needed to get the value of rdi (1) (as function argument) back after the function. 

    ret 

```

## First thought
- We end up with a very mips like system, as it's kinda the same thing: 
## After more thought: 
- but done at a different place. 
## After some more thought: 
- However, it does end up having a different purpose. One is to retain the myfunc arg1 after the call  (mips)
- The other is to retain the caller (main) arg1 after the call to myfunc. 
- Or whatever rdi (arg1 register) was before the call. 
- Which is a logical thing to do, same as pushing the extra arguments before the call. 
- So there isn't really any thing different. It's just the logical way to do things


## Final thought: 
- If we have chained call. where we do something like 
```c 

int func1(int a, int b) {
    return func2(a*2, 6); 
}
```

then, the saving of the a's value will be done right before the call to func2, but thats also right after the start of func1
which is kinda the prologue of func1. 

Then, by symmetry, a restore to a (if -O0) will be placed right after the call to func2, which is also the end of 
func1. So with -O0, it does a similar thing, just different pov. 

# True Final thought: 
- However, as I said, its for a different purpose so it wont do the same thing. 
- Like, if we do some work with regular a in func1 before the end, then we need to restore after func2. 
- So it won't be before the end. 
- Again, this is for a different purpose kind of thing. Hence, even in mips, I'd logically restore after func2 call. 

# Recap: 
- It's for different things. The callee push/pop and caller push/pop. It's not a convention thing, just a logical result. 
- In mips, I just had an extra pop/restore in the callee. 


# Comparaison to saved temporary registers, and temporary registers. 
- Here, the saved temporary registers usage of pushing at the start of a function the function_start one, and popping at the end 
- Was kinda dumb/useless. At least, much less useful then doing some storing the previous value of rdi, before we do a mov for the new function argument. 
- (Comparing storing before the mov for function arguments, and after. )
- before: Smart
- After: Mips (Also, We did it in the function body. (After the call, not before), 
    - but that is computationally the same thing, just different order. )



