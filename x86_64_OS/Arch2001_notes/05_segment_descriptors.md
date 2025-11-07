
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


***Field Descriptions***

- **BASE** — Segment base address  
- **G** — Granularity  
- **D/B** — Default operation size (0 = 16-bit segment; 1 = 32-bit segment)  
- **L** — 64-bit code segment (IA-32e mode only)  
- **AVL** — Available for use by system software  
- **LIMIT** — Segment Limit  
- **P** — Segment present  
- **DPL** — Descriptor privilege level  
- **TYPE** — Segment type  
- **S** — Descriptor type (0 = system; 1 = code or data)  

```c
struct SegmentDescriptor {
    uint32_t lower; // Base: 15-0: 
    uint32_t upper; // base: 31-24, 23-16
    // order lower first because little endian
}

```


So, bit 31-24 are the (21-34 bit of the base address)
bit 7-0 are the 23-16 bit of the base address. 
Lower: Bit 31-

The upper 32 bits of the Segment descriptor. And the lower 32 bit of the segment descriptor. 

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


--- 
Since the base is a 32 bit address, we have an issue. 
So for 64 bit mode, we can't use the base in the segment descriptor. 

So, for CS, SS, DS, ES, the base is set to 0. 

And for FS and GS, they use a MSR (Model specific register): IA\_32\_FSBASE and IA\_32\_GSBASE


--- 
# Segment Limit
Limit: 20 Bit value. Size of the segement (in bytes, or 4kb blocks), for compatibility mode. 
Limits are not actually checked anymore in 64 bit mode, even for FS and GS


# G - Granularity

Wheter the segment limit is in byte or in 4kb block
Not used in 64 bit mode
G = 1: 4kb chunks 

So, segment size = (SegmentLimit +1)* 4kb^G 
segment_size = SegmentLimit+1 (if G = 0)
segment_size = (SegmentLimit + 1)*4kb (if G = 1) 

# P - Present 
0 : Not Present 
1: Present 

If this flag is clear, the processor generates a segment not present exception (#NP) when a segment selector that ppoints to the segment descriptor-
-is loaded into a segment register

# S - System Flag 
0: A System Segment 
1: A Code/Data Segment. (Kinda backwards)

So, the GDT, IDT and other system structure used by the cpu should be flagged as a System segment

# Type Flag:  
Different for system or non system segment

"/home/francois/Documents/zzz__PersonalProjects/Learn%20C%20And%20Assembly/arch2001_x86-64_os_internals_slides_and_subtitles/04_SegmentationAndPrivilege/_Arch2001_04_SegmentationAndPrivilege_04_SegmentDescriptors.pdf"
Page 20

If not a system segment. 
- bit 11: 0 = Data, 1 = Code
- bit 10: E : 1 = expand down (for data). 1 = conforming (for code)
- bit 9: 1 = Write premission 
- bit 8: 1 = Accessed 


Read only is default data state (all 0). 
Execute only is  the default code state (all 0). 
So data is always readable. 
Code always executable (have execute permission. Nothing more, nothing less)

What does it mean? 
Expand Down: For stack segment, to allow growth toward lower address
    - Although read only and expend down cant be used for a stack segment. If the SS points to a non writable Segment Descriptor, then it generate a General-Protection exception (#GP)
        - Though nobody uses it, so expand down is trivia
Conforming: 
    - Conforming segment allow a lower priviledge code to execute them. 
        - Ring 3 code could just jump to a Ring 0 conforming segment and keep running. 
    - Non conforming segment behave how you'd expect. If someone from a lower priviledge tries to execute them, it generate a General-Protection (#GP)

    TLDR: Make Non Conforming segments. So code section has 0 for conforming

You'd want conforming segment for OS Services, that are Ring 2, and then jump into some Ring 3 code that isn't security-critical

Code segment are never writable. 
For security, it should never be both writable and executable


# D/B Flag 
If Type of Code: Then called the D Field. 
Default Opcode Size Flag

Check video again. 12:50
Page 30

D = 0, default size = 16 bits 
if D = 1, default size = 32 
Used for immediate fetching given `op AX, immX` might have the same opcode. Then, how does it know to read 32 or 16 bits for the immediate. What is the immediate of the current instruciton. 
what is the start of the next instruction

The 66h instruction prefix  override the d flag
66h 25 would overw


If type is a stack segment (data pointer to be SS register)
B: Big Flag, determine if pushes and pop do 16 (if B is 0) or 32 bits (if B is 1.)
(In 64 bit mode, its always 64 bit pushes and pop)


For expand down data segment. 
B Flag 
0 = Upperbound of 0xFFFF, 1 = upper bound of 0xFFFFFFFF
No one really uses expand down segments


# DPL - Descriptor Priviledge Level
2 bits. PRiviledge Ring of the segment for access control

If this is a non conforming segment descriptor && DPL == 0, only ring 0 code can execute from within this segment. 

If this is a data segment selected && DPL ==0, only ring 0 code can read/write to this segment 


# AVL - No specific usage. Available for OSes to use it however they want
