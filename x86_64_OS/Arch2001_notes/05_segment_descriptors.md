
The GDTR and LDTR are registers which points to the GDT and LDT. 
```c
void* %gdtr = 0xff1234abDEFG6789; 
void* %ldtr = 0xabcd; // rest is hidden
// just some random values. The % is to say they are registers


// or even better: 
struct GDT* %gdtr;
struct LDT* %ldtr;

struct GDT { 
    struct SegmentDescriptor segments_info[N];
};
```

Each entry in the GDT and LDT is a data structure called a *Segment Descriptor* 

So now, we want to know what is 

```c
struct SegmentDescriptor {
    ?
}; 
```

---
# Segment Descriptors 1 
- Each entry in the GDT and LDT is a data structure called a *Segment Descriptor* 
- Each *Segment Descriptor* describe a *Segment* (make sense)

```Segment Descriptor```

"/home/francois/Documents/zzz__PersonalProjects/Learn C And Assembly/arch2001_x86-64_os_internals_slides_and_subtitles/04_SegmentationAndPrivilege/_Arch2001_04_SegmentationAndPrivilege_04_SegmentDescriptors.pdf"

> “Each segment has a segment descriptor, which specifies the size of the segment, the access rights and **privilege level** for the segment, the segment type, and the location of the first byte of the 
segment in the linear address space (called the base address of the segment).”

```Segment Descriptor Layout```

```markdown
*Higher*
31                      24|23 |22   | 21| 20  |19 16              |15 |14 13|12|11        8|7           0
+-------------------------+---+---+---+---+---+---+---+-------------------------------------------------+
|        Base 31:24       | G | D/B | L | AVL  | Seg. Limit 19:16 | P | DPL | s|   Type    | Base 23:16 |
+-------------------------+---+---+---+---+---+---+---+--------------------------------------------+

*Lower*
31                                        16|15                                                    0 
+-------------------------------------------|------------------------------------------------------+
|       Base Address 15:00                  |                Segment Limit 15:00                   |
+--------------------------------------------------------------------------------------------------+
```

So, bit 31-24 are the (21-34 bit of the base address)
bit 7-0 are the 23-16 bit of the base address. 
Lower: Bit 31-

The upper 32 bits of the Segment descriptor. And the lower 32 bit of the segment descriptor. 
So, it's 
```c
struct SegmentDescriptor {
    uint32_t lower; // Base: 15-0: 
    uint32_t upper; // base: 31-24, 23-16

    // order lower first because little endian
}

```

***Field Descriptions***

- **BASE** — Segment base address  
- **G** — Granularity  
- **D/B** — Default operation size (0 = 16-bit segment; 1 = 32-bit segment)  
- **L** — 64-bit code segment (IA-32e mode only)  
- **AVL** — Available for use by system software  
- **LIMIT** — Segment Limit  
- **P** — Segment present  
- **DPL** — Descriptor privilege level  
- **S** — Descriptor type (0 = system; 1 = code or data)  
- **TYPE** — Segment type  

***Figure 3-8. Segment Descriptor***


***Segment Descriptor Bit Layout***

A **Segment Descriptor** in the GDT/LDT is 8 bytes (64 bits) long.  
Here’s a breakdown of all fields and their bit positions.


--- 
Long Mode Flag: 

L Flag (bit 21): Wheter this is 64 bit segment or not (if not, it's Compatibility Mode (So 32 bit protected mode behavior))

**From The Black Manta diagram for booting** 
CS.L = 1 : 64 bit mode 
CS.L = 0: Compatibility Mode. 

Code Segment.Long Mode Flag
