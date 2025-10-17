# Meta. Stuff about the slides

0xff0000 red star = kernel level (ring 0 priviledge instruction)
0xffff00 yellow star = userland level (any ring priviledge instruction)



----



# CPUID 

## CPU (feature) Identification 


- Different Processor support Different features 
- CPUID is how we know if the chip we're running on supports newer features, such as 64 bit mode, hardware virtualization, Hyperthreading 
    - thermal monitors, etc. 


- CPUID doesn't have operands. Rather it takes inputs as value preloaded into eax (and possible ecx)
- After it executes, the output are stored into eax, ebx, ecx and edx. 
    - Takes eax even on 64 bit system


OP Cpde: OF A2
Instruciton: CPUID 
OP/EN: ZO 
64 bit mode: Valid 
Compat/Leg Mode: Valid 


# How to know if we can use cpuid? 
- it wasn't added until late model 486s (which are very old. this is historical and pedagogical)
- The ID flag (bit 21) in the EFLAGS register indicates suport for the cpuid instruction. If a software procedure can set and clear this flag, 
    - the processor executing the procedure supports the cpuid instruction

Not just looking if its a 1 or 0, but set and clear the flag


---- 
# How to change the ID Flag? 
How to read,set and clear the id flag? or write to eflags? 

- pushfq/popfq instruction
 - f for flags, q for qword size. 
    - remember, RLFAGS is just EFLAGS zero-extended to 64 bits
        - Since some tools like WinDbg still just refer to it as EFLAGS. Some people use both interchangeably


pushfq (push it to the stack.) 
manipulate the stack, and then pop it back to rflags.

Some flags won't be transfered from the stack to rflags unless you are in ring 0 (kernel mode)

# How to know if it's an intel processor. 
put 0H in eax, check EBX, ECX. "Genu" "ntel" , "Ine"

Zero H. H for hex. 
0x0 


# Check pdf notes from course 2. Look at the images. Table 3-8 Information returned by cpuid instruction 
