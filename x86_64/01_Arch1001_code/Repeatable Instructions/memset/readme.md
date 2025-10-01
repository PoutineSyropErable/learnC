memset use 64 bit register, not rep stos. 
Might be a pointless exercise. 


gdb --args memset_ 10 57 12 
b main # breakpoint at start of main 
r # run # 
b 15    # breakpoint line 15
c      # continue 
n       # next c line 
si     # next assembly instruction 
s       # step into the function call


# just some example command, doing all of these will not work
