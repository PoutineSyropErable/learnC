
Two forms of control flow: 

Conditionals: 
- go somewhere if a condition is mets 
    - if
    - switch 
    - loop


Unconditionals: 
- Always go somewhere 
    - function calls, goto, exception, interrupts 


function calls use 
`call func_name` and `ret`


GotoExample: 
```c 
#include <stdio.h>
int main(void) {
    goto mylabel; 
    printf("skipped\n");
mylabel: 
    printf("goto ftw!\n");
    return 0xb01dface;
}

```

```asm
# Microsoft Visual studio asm
# compiled with cl.exe
main: 
    sub rsp, 28h 
    ; = 0x28 
    ; h is for hex
    jump 0000000000140000001012 ; or something like that
    lea rcx [some value]
    call printf_address
$mylabel: 
    lea rcx [some other value]
    call printf_address
    mov eax, 0xb01dface 
    add rsp, 28
    ret 

# it use 
    0123ABCh 
; rather then 
    0x123abc 
```


