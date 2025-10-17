The previous lecture ended with talking about how to set these modes to get to 64 bit mode

The start was about cpuid. To see which features are available on the cpu. How do you enable it

That is how features can be enabled and configured after being checked to be present with cpuid


# Model Specific Registers (MSRS)
- When hardware maker add new features to new processors, they need some way for software to detect whether that feature is present and/or enabled. 
- MSRs provide a way on Intel Systems to support an ever-increasing number of feature flags 
- The MSR list is so big that intel eventually split it out into Volume 4 of the Manuals


2.1: Architectural MSRs: They are so common, they should be treated as if belonging to all processor families
2.2+ : A list for each specific intel cpus


---
Naming Caveat: 
- For historical reason (beginning with the Pentium 4 processor), these architectural MSRs were given the prefix "IA32_". 
    - So just because it says IA32_ doesn't mean it's restricted to 32-bit execution


--- 
# RDMSR - Read MSR (Assembly Instruction) (Only executable from priviledged environment)

argument: ECX ()
output: EDX:EAX 


```asm
mov ecx, value 
rdmsr 
opw edx 
opw eax 
; again, opw: Operation Word, is just a made up instruction for myself. Like a "printf" pseudo instruction
; Just to say, those are useful values, and they are output value, you want to read from them. 
; whereas i wrote to ecx 
```

---
# WRMSR - Write to model specigic registers. (Assembly Instruction) (Only executable from priviledged environment)
- If they were executable from user space, it would be disastrous. Somehow could turn off security functionality. 

Inverse of rdmsr, 
Write the value into edx:eax to MSR specified by ecx 


- ECX = MSR index (32-bit MSR number).
- EAX = low 32 bits of the 64-bit value to write.
- EDX = high 32 bits of the 64-bit value to write.

```asm
mov edx, high_value 
mov eax, low_value 
mov ecx, msr_number 
wrmsr

```

---

The prof use an orange icosahedron for an MSR. 

Architectural MSR: 
Table 2-2. IA-32 Architectural MSRs (Contd.)

ECX: 0xC000_0080, it means vv
IA32-EFER: The extended feature enable

Bit 8: IA32_EFER.LME (Long Mode Enable) (R/W)
Bit 10 (ten): IA32-e Mode active: IA32_EFER.LMA (R). (REad only ) 
    - Tells you whether or not the mode is active right now


EFER is accessible if CPUID.0x800_0001:EDX bit 20 or bit 29 is set (=1)

Bit 20: Execute Disable bit available 
Bit 29: Intel 64 Architecture available if 1
(in EDX, output of CPUID)



--- 
To fully undersand priviledge bits, we need to learn about segmentation
