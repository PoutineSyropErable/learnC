lea: Load effective address

use the mX form (really just the m in the manual)
but is the *exception to the rule* that the square brackets [] syntax means dereference! 


used in pointer arithmetic, and sometime just arithmetic in geneal. 

---
Example: 
rbx = 0 x2 
rdx = 0x1000 

lea rax, [rdx + rbx*8 + 5] 
rax = rdx + rbx*8 + 5 
rax = 0x1015
NOT The value at 0x1015

**No dereference!**

---

practice: 
just use gnome calculator or Qalculate! 
```asm 
mov rsi, 0x817E4AD0
mov rax, 0x89
lea rax, [rsi+rax*1]

rax = 0x817E4AD0 + 0x89+1
```
