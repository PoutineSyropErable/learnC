 
# gcc flags

gcc -fno-stack-protector 
no stack protector is a nice flag the prof use in his things


--- 
# gdb flags 

-q for quiet 
-x for gdb config paths




endbr64 is for a new technology: Intel Control flow Enhancement Technology. 
( A new security mechanism? )

has the same effect has no op (nop) whhen it does not support CET. 





ni: next instruction (without stepping into a call)
si: next instruction (step into call)


---
# System V ABI: Stack frame with Base pointer 
https://raw.githubusercontent.com/wiki/hjl-tools/x86-psABI/x86-64-psABI-1.0.pdf


"""
The 128 byte area beyound the location pointed to by %rsp is considered to be reserved and shall not be modified by signal or interrupt handlers. 
Therefore, function may use this area for temporary adata that is not needed across function calls. 
*In particular, leaf functins may use this area for their entire stack frame, rather then adjusting the stack pointer in the prologue and epilogue* 
This area is known as the red zone. 
"""
- Quote from the manual

"/home/francois/Documents/zzz__PersonalProjects/Learn C And Assembly/arch1001_x86-64_asm_slides_and_subtitles/13_Linux_Assembly_Examples/_Arch1001_13_Linux_02_SingleLocalVariable.pdf"
Page 5

"https://www.google.com"
