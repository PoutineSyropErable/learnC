some text


GDT and LDT: 
TI = 1: LDT 
TI = 0: GDT 


The actual tables are fiound with `GDTR` and `LDTR` registers
The value in the registers is the address of the base of the tables. Aka, they are pointers. (Void *)


While the LDT seems to have a lot of fields, it's like with segment registers. There's just a 16 bit that's available to us, and the rest is hidden cache.


----

# GDTR — Global Descriptor Table Register

## 32-bit Protected Mode Format
┌──────────────────────────────┬───────────────────────┐
│        Base Address (32)     │   Table Limit (16)   │
│47 ---------------------- 16  │15 --------------- 0  │
└──────────────────────────────┴───────────────────────┘

- **Size:** 6 bytes (48 bits total)
- **Base Address:** 32 bits — linear address of GDT
- **Limit:** 16 bits — size of GDT in bytes minus one


## 64-bit Long Mode Format
┌──────────────────────────────────────────────────────┬───────────────────────┐
│              Base Address (64 bits)                  │   Table Limit (16)   │
│79 -------------------------------------------- 16    │15 --------------- 0  │
└──────────────────────────────────────────────────────┴───────────────────────┘

- **Size:** 10 bytes (80 bits total)
- **Base Address:** 64 bits — linear address of GDT
- **Limit:** 16 bits — same meaning as in 32-bit mode



---

**Note:**  
In both modes, `lgdt [mem]` loads this structure from memory.  
The **GDTR itself** (inside the CPU) holds:
- A 64-bit base (even in long mode)
- A 16-bit limit

The Base Address is a Linear Base Address. So = Virtual with paging. = Physical without


---

0xff0000 Ring 0: LGDT - Load 10 bytes from memory into GDTR     | Kernel Level
0xffff00 Ring 3: SGDT - Store 10 bytes of GDTR to memor         | Any priviledge ring


0xff0000 Ring 0: LLDT - Load 16 bit segment selector into LDTR
0xffff00 Ring 3: SLDT - Store 16 bit segment selector of LDTR to memory
memory

Put information about the GDT, and LDT. 

The tables are in ram


--- 
# Whats the point of the ldt? 

- The original point was to give different processes different views of memory via different segments. 
    - In IA-32e mode, a segment descriptor table can contain up to 8192 (2^13) byte descriptor (Vol 3, Sect 3.5.2)
- These days, its done in paging

