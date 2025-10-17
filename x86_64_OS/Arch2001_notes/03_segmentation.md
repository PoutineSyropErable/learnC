A quick detours from the previous msr stuff


---
# Segmentation
- Segmentation providews a mechanism for dividing the processor addressable memory space (called *linear address space*) 
    into smaller protected address spaces called *segments*. 


Segment Registers: CS, SS, DS, ES, FS, GS 

Nobody does the complex segmentation for small chunks. 

Less complicated version: 1 segment for code, data, stack (CS, DS, SS), and then 3 other for stuff. 

Six 16 bit registers. 

CS: Code Segment    (Hold the selector for the current code. Still used to switch between ring levels)
DS: Data Segment    (Usually igored in 64 bit mode {flat memory})
SS: Stack Segment   (Usef for stack acces in 64 bit mode, but base is typically 0)
ES: Extra Segment   (Historically for string operation: *MOVS*, *STOS*. Mostly ignored now) 
FS: Extra Seg,emt   (Often used for *thread local storage*)
GS: Extra Segment   (Usef by the kernel in 64 bit mode to point to *per-CPU data*)

The extra segment, are Usually an extra type of data segment


Every segment register (CS, DS, SS, ES, FS, GS) is 16 bits wide in x86/x86-64.

15..3	Index into the GDT/LDT
2	Table Indicator (0 = GDT, 1 = LDT)
1..0	Requested Privilege Level (RPL, 0-3)


```asm

MOV SR, r/m16 ;  write
or 
MOV r/m16, SR ; read

mov ax, 0x23      ; load selector
mov ds, ax         ; set DS
mov es, ax         ; set ES
mov fs, ax         ; set FS (may require `wrmsr` in long mode)
mov gs, ax         ; set GS (may require `swapgs` / `wrmsr`)


mov rax, [fs:0x100]  ; reads from FS base + 0x100
mov rax, [gs:0x200]  ; reads from GS base + 0x200


mov rax, []

# fetching the instruction itself. (from the code), or call 


```

```asm 
; Default DS segment (base = 0 in 64-bit mode)
mov rax, [rbx]        ; RAX = memory at linear address RBX + DS base (0)
mov rdx, [rax+8]      ; RDX = memory at linear address RAX + 8 + DS base (0)

; Stack access, implied SS segment
mov rcx, [rsp]        ; RCX = memory at RSP + SS base (0)
mov r8,  [rbp-16]     ; R8  = memory at RBP-16 + SS base (0)

; Instruction-relative (CS segment, RIP-relative)
mov rax, [rip+0x20]   ; RAX = memory at RIP+0x20 (CS base ignored in 64-bit)

; FS/GS override (non-zero base allowed)
mov rax, [fs:0x30]    ; RAX = memory at FS base + 0x30
mov rbx, [gs:0x100]   ; RBX = memory at GS base + 0x100

; Explicit segment override (rare in long mode, mostly ignored for DS/SS/ES)
mov rax, [ds:rbx]     ; same as mov rax, [rbx] because DS base = 0
mov rcx, [ss:rbp-8]   ; same as mov rcx, [rbp-8]

```


if segmentation exist. The following "bug" happens: 
```asm 
mov rax, rsp 
mov rax, [rax] 
;  It doesn't read from stack


; Since rax is offset from the data segment. 
; And rsp is offset from the stack segment. 

; Which makes stuff like 

arr[i][j].z = 5;  
; which might have some user read from rax first. 


```

It's a nice protection, but not needed when paging exist. However, I will write my kernel with both, and all rings, for the sake of it
So ring \[0,3\], not just 0 and 3. 
{0,1,2,3}



HOWEVER, IN 64 BIT MODE, IT'S GENERALLY (BUT NOT COMPLETELY) DISABLED. SO IT MIGHT NOT BE POSSIBLE. 
The CS, DS, ES and SS will be treated as 0 by the hardware. It won't care to do table lookup. Hence, you can't modify it in 64 bit mode


FS and GS are exception. 

If you want true segmentation and paging, it needs to be 32 bit

--- 
# Segment addressing. 
Os people do it once to set it up, and then forget about it. 

- No mode bit to disable segmentation 
- To locate a byte in a particular segment, a logical *address* (also called far pointer) must be provided. 
    - A logical address consists of a segment selector and an offset.  
- The physical address space is defined as the range of adddresses that the processor can generate on its address bus 
    - Addres Bus: Going to RAM/MMIO
- Linear address space is a flat 64 bit space


# Pointer Layouts in x86 and x86-64

## Near Pointer (16-bit, 32-bit)
                 Near Pointer
         ┌───────────────────────────────┐
         │            Offset             │
         │ 31 ----------------------- 0  │
         └───────────────────────────────┘


## Far Pointer / Logical Address (16-bit, 32-bit)
          Far Pointer or Logical Address
┌───────────────┬───────────────────────────────┐
│ Segment Select│            Offset             │
│47 -------- 32 │31 ----------------------- 0   │
└───────────────┴───────────────────────────────┘


---

# 64-bit Mode Pointers

## ─────────────── MAIN TWO ───────────────

### Near Pointer (64-bit)
    ┌───────────────────────────────────────────────┐
    │                    Offset                     │
    │ 63 --------------------------------------- 0  │
    └───────────────────────────────────────────────┘


### Far Pointer (64-bit operand size)
    ┌───────────────────────┬───────────────────────────────────────────────┐
    │ 16-bit Segment Select │                 64-bit Offset                 │
    │79 ---------------- 64 │63 --------------------------------------- 0   │
    └───────────────────────┴───────────────────────────────────────────────┘


## ─────────────── OPTIONAL (Legacy) ───────────────

### Far Pointer (32-bit operand size)
┌───────────────┬───────────────────────────────┐
│ Segment Select│            Offset             │
│47 -------- 32 │31 ----------------------- 0   │
└───────────────┴───────────────────────────────┘


### Far Pointer (16-bit operand size)
┌───────────────┬───────────────────────┐
│ Segment Select│        Offset         │
│31 -------- 16 │15 ---------------- 0  │
└───────────────┴───────────────────────


Page 9
"_Arch2001_04_SegmentationAndPrivilege_02_SegmentSelectorAndRegisters.pdf"
"/home/francois/Documents/zzz__PersonalProjects/Learn C And Assembly/arch2001_x86-64_os_internals_slides_and_subtitles/04_SegmentationAndPrivilege/_Arch2001_04_SegmentationAndPrivilege_02_SegmentSelectorAndRegisters.pdf"



---
# Address Spaces restated 1

- Logical Address   : Far pointer that specifies a segment to offset within
- Linear Address    : Flat 32/64 bit nonational address. Post segmentation. 
- Virtual Address   : Address that takes paging into account 
- Physical Address  : Offset into physical ram


*(Before enabling paging)*
Logical -> Linear -> Physical       ( Linear = Physical)
*(AFter enabling paging, in Protected mode, or Long mode)*
Logical -> Linear -> Virtual -> Physical    (Linear = Virtual)

Logical address =  segment selector:offset
Linear Address =  (segment base) + offset
*Virtual Address = Linear Address*
PD index | PT index | Page offset
virtual_address = \[31:22\]PD | \[21:12\]PT | \[11:0\]offset

Page Directory Index, Page Table Index, Page OFfset


physical_address = frame_base + page_offset


---
# Segmentation Restated 1 

Done automatically in hardware by using table lookups. 
    - But software fills in the table

Logical Address (far pointer) = 16 bit segment selector + 32/64 bit offset

Goes through descriptor table, and return a base address

Page 12
"/home/francois/Documents/zzz__PersonalProjects/Learn C And Assembly/arch2001_x86-64_os_internals_slides_and_subtitles/04_SegmentationAndPrivilege/_Arch2001_04_SegmentationAndPrivilege_02_SegmentSelectorAndRegisters.pdf"

---
# *32 bit mode*
```python
# -------------------------------
# Input:
#   segment_selector : 16-bit selector (e.g., CS, DS, SS)
#   offset           : 32/64-bit offset
#   gdt              : global descriptor table
#   ldt              : local descriptor table (optional)
#   page_table       : mapping of linear -> physical
# -------------------------------

"""
32 bit mode
"""

def logical_to_linear(logical_address):
    # Extract the segment selector and offset from the logical address
    logical_address = 0x12345678  # example, just as one packed value
    selector = (logical_address >> 16) & 0xFFFF  # high 16 bits
    offset   = logical_address & 0xFFFF         # low 16 bi
    # That is wrong, it's 32 + 16. 
    # And the 16 bit from the segment selector depends relative from what you are reading. 
    # [rsp+offset], [rip+offset], [rax+offset] 
    # stack,          code           data 

    # Lookup the segment base from GDT/LDT
    if segment_selector.references_gdt():
        descriptor = gdt[segment_selector.index]
    else:
        descriptor = ldt[segment_selector.index]

    segment_base = descriptor.base

    # Linear = base + offset
    linear_address = segment_base + offset
    return linear_address


def linear_to_physical(linear_address):
    # 4. Split linear address into page indices and offset
    pd_index = (linear_address >> 22) & 0x3FF   # upper 10 bits for page directory
    pt_index = (linear_address >> 12) & 0x3FF   # next 10 bits for page table
    page_offset = linear_address & 0xFFF        # lower 12 bits for offset in page

    # 5. Lookup physical frame
    page_directory_entry = page_table[pd_index]
    page_table_entry = page_directory_entry[pt_index]
    frame_base = page_table_entry.base_address

    # 6. Physical address
    physical_address = frame_base + page_offset
    return physical_address


# -------------------------------
# Example usage
segment_selector = 0x23    # example DS
offset = 0x1234
linear = logical_to_linear(segment_selector, offset)
physical = linear_to_physical(linear)
print("Linear:", linear)
print("Physical:", physical)

```

---
# *With base 0 (Popular, ie: Linux), 64 bit mode*
```python 
With base 0 (Popular, ie: Linux), 64 bit mode

# -------------------------------
# Input:
#   segment_selector : 16-bit selector (e.g., CS, DS, SS, FS, GS)
#   offset           : 64-bit offset
#   segment_bases    : dictionary of segment bases (FS, GS, etc.)
#   page_table       : 4-level page table mapping linear -> physical
# -------------------------------

def logical_to_linear(segment_selector, offset, segment_bases=None):
    """
    Convert logical address to linear in x86-64 long mode
    """
    # Default segment base is 0
    base = 0

    # Only FS and GS have non-zero bases
    if segment_selector == "FS" and segment_bases:
        base = segment_bases.get("FS", 0)
    elif segment_selector == "GS" and segment_bases:
        base = segment_bases.get("GS", 0)

    linear_address = base + offset
    return linear_address


def linear_to_physical(linear_address, page_table):
    """
    Translate a 64-bit linear address to physical using 4-level paging
    """
    # Split linear address into indices for 4-level paging
    pml4_index = (linear_address >> 39) & 0x1FF
    pdpt_index = (linear_address >> 30) & 0x1FF
    pd_index   = (linear_address >> 21) & 0x1FF
    pt_index   = (linear_address >> 12) & 0x1FF
    page_offset = linear_address & 0xFFF

    # Walk the page tables
    pdpt = page_table[pml4_index]
    pd   = pdpt[pdpt_index]
    pt   = pd[pd_index]
    frame_base = pt[pt_index]  # physical frame base

    physical_address = frame_base + page_offset
    return physical_address


# -------------------------------
# Example usage
segment_selector = "DS"  # CS, DS, SS, FS, GS
offset = 0x123456789ABC
segment_bases = {"FS": 0x7FFF_FFFF_0000, "GS": 0x6000_0000_0000}  # example
linear = logical_to_linear(segment_selector, offset, segment_bases)
physical = linear_to_physical(linear, page_table={})  # page_table would be your 4-level table
print("Linear:", hex(linear))
print("Physical:", hex(physical))


```



---
With segmentation in 64 bit mode (rest is the same)
```python 
def logical_to_linear(logical_address, gdt, ldt=None):
    """
    Convert a logical address to linear using segment base
    """
    segment_selector, offset = logical_address

    # Extract table indicator and index
    ti = (segment_selector >> 2) & 1   # 0 = GDT, 1 = LDT
    index = (segment_selector >> 3) & 0x1FFF

    # Get descriptor
    if ti == 0:
        descriptor = gdt[index]
    else:
        descriptor = ldt[index]

    # Segment base from descriptor
    base = descriptor.base  # 64-bit in x86-64

    linear_address = base + offset
    return linear_address
```



---
TI: Table Indicator
GDT : Global descriptor table 
LDT: Local descriptor table

RPL: 2 bit. 4 option, {0,1,2,3}

Theres push SR and pop SR


```asm
push CS 
; no pop CS

push DS
pop DS 

```


--- 
# Segment Registers have a hidden side. 
You can't directly access. 
It's a cache (Like for tlb)


Segment selector: Visible 

Hidden part: Base address, Limit, Access Information

in 64 bits: 
Harcoded Base == 0, or Base from Table 
Limits: 2⁶4 -1 or Limit from Table
Access from table from all of them


0: GDT
1: LDT 


Hidden Part: Access from table: Permission information. Kernel allowed to, user space allowed too? 

So, Access information is read from the table. 

# SEGMENT SELECTOR INFORMATION. BIT VALUES. BIT MEANING
15 --Index-- 3| 2: TI | 1 --- RPL --- 0

; Segment Selector (16 bits)
; ┌───────────────┬────┬────┐
; │   Index (13)  │ TI │RPL │
; │ 15 ........ 3 │  2 │1..0│
; └───────────────┴────┴────┘


13 bits of index from table 
1 : Table information 
2 : Rings


---
#  Diff with paging. 


GDT is for segmentation. 
GDTR is the register for it. 

CR0 and CR3 is for paging. 
PML4, PDPT, PD, PT 

PML4: Page Map Level 4 (Points to PDPT).  Level 4.    512 GB 

# x86_64 Page Table Hierarchy

This table summarizes the 4-level paging system in x86_64 architecture.

| Level | Table Name | Points To | Page Size Covered | Notes |
|-------|------------|-----------|-----------------|-------|
| 4 (top) | PML4 (Page Map Level 4) | PDPT | 512 GB per entry | Each table has 512 entries, 8 bytes each |
| 3 | PDPT (Page Directory Pointer Table) | PD | 1 GB per entry (if large page) | Can point to 1 GB large pages directly |
| 2 | PD (Page Directory) | PT | 2 MB per entry (if large page) | Can point to 2 MB large pages directly |
| 1 (bottom) | PT (Page Table) | Physical 4 KB page | 4 KB per entry | Standard small page |

**Notes:**

- Each table occupies **4 KB** of memory (512 entries × 8 bytes).  
- CR3 holds the physical address of the **PML4 table**.  
- Large pages allow skipping lower levels of the page table.  
- The CPU walks this hierarchy to translate virtual addresses to physical addresses.


Every page table (and the other level) entry is 64 bits (8 bytes)


12-51: The address 
Others are flags (hardware), some are os specific (so for custom software support). Some ar cpu reserved


The page table points to a Physical address. (base pointer)


each Table are 4kb in size. 
So, it takes 16 kb to have the whole paging setup


Usually, 16-32 MB are identity mapped at boot. 
You can use 2MB or 1Gig Page 


---
# At reset: 

CS = 0xF000 # code segment
IP = 0xFFF0 # instruction pointer

normally, in real mode:
```c
linear = (segment << 4) + offset
// But, that would land at 0xFFFF0, which is at (1MB - 16 bytes) // minus 
// 2^18 = 1 000 000 and something 
// 18 = 16+2 
// 1 hex = 4 bits 
// 0xFFFF = 2^16 -1 

// 0xffff 0 = 1048560


```
But on 32-bit and 64-bit x86, Intel kept the same visible registers (CS:F000, IP=FFF0),
but internally remapped the CS base to *0xFFFF0000* to support the 4 GB physical address space.

So now, 
linear = 0xFFFF0000 + 0xFFF0 = 0xFFFF FFF0
: The value of the reset vector. Where code execution start. 
linear = 4294967280 = (4GB - 16 bytes)



--- 
# At reset, it's in real mode. So Protected mode is Off, so it's not using any gdt or ldt. That kind of segmentation isn't supported till 32bits

- So this section above doesn't apply. It's wrong. It's just a pedagogical exercise

15..3	Index into the GDT/LDT
2	Table Indicator (0 = GDT, 1 = LDT)
1..0	Requested Privilege Level (RPL, 0-3)

1111 0000 0000 0000 
x              xyyz

index =0001 1110 0000 0000 
GDT, Ring 0

index = 512 + 1024 + 2048 + 4096 
index = 7614


So, 

CS.base = %GDTR\[index\].base
which is set to 


