
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

> “Each segment has a segment descriptor, which specifies the size of the segment, the access rights and **privilege level** for the segment, the segment type, and the location of the first byte of the 
segment in the linear address space (called the base address of the segment).”

```Segment Descriptor Layout```

```
31                                                                         0
+-------------------------+---+---+---+---+---+---+---+--------------------+
|        Base 31:24       | G | D | L | A | V | L |   Type    | Base 23:16 |
+-------------------------+---+---+---+---+---+---+---+--------------------+
|       Base Address 15:00                  | Segment Limit 15:00          |
+--------------------------------------------------------------------------+
```

***Field Descriptions***

- **L** — 64-bit code segment (IA-32e mode only)  
- **AVL** — Available for use by system software  
- **BASE** — Segment base address  
- **D/B** — Default operation size (0 = 16-bit segment; 1 = 32-bit segment)  
- **DPL** — Descriptor privilege level  
- **G** — Granularity  
- **LIMIT** — Segment Limit  
- **P** — Segment present  
- **S** — Descriptor type (0 = system; 1 = code or data)  
- **TYPE** — Segment type  

***Figure 3-8. Segment Descriptor***


***Segment Descriptor Bit Layout***

A **Segment Descriptor** in the GDT/LDT is 8 bytes (64 bits) long.  
Here’s a breakdown of all fields and their bit positions.

***

***Lower 32 bits (bits 0–31)***

| Bits       | Field                | Size (bits) |
|-----------:|--------------------|-------------|
| 0–15       | Segment Limit 15:0  | 16          |
| 16–31      | Base Address 15:0   | 16          |

```
31                             16 15                           0
+--------------------------------+--------------------------------+
|       Base Address 15:0       |       Segment Limit 15:0       |
+--------------------------------+--------------------------------+
```

---

***Upper 32 bits (bits 32–63)***

| Bits       | Field                 | Size (bits) |
|-----------:|----------------------|-------------|
| 32–39      | Base Address 23:16    | 8           |
| 40–43      | TYPE                  | 4           |
| 44         | S (Descriptor Type)   | 1           |
| 45–46      | DPL (Privilege)       | 2           |
| 47         | P (Present)           | 1           |
| 48–51      | Segment Limit 19:16   | 4           |
| 52         | AVL (Available)       | 1           |
| 53         | L (64-bit segment)    | 1           |
| 54         | D/B (Default size)    | 1           |
| 55         | G (Granularity)       | 1           |
| 56–63      | Base Address 31:24    | 8           |

```
31                                                                         0
+-------------------------+---+---+---+---+---+---+---+--------------------+
|        Base 31:24       | G | D | L | AVL | 0 |  S | TYPE | Base 23:16   |
+-------------------------+---+---+---+---+---+---+---+--------------------+
```

---




***
***Segment Descriptor (64-bit) Summary with Bit Positions***

A Segment Descriptor in x86 is 8 bytes (64 bits) long. It defines a segment’s base address, size, type, access rights, and privilege level. This table combines bit positions, size, and descriptions for all fields.


| Field                 | Bits   | Size (bits) | Description                                                                 |
|-----------------------|--------|-------------|-----------------------------------------------------------------------------|
| Segment Limit 0–15    | 0–15   | 16          | Lower 16 bits of the segment size                                           |
| Base Address 0–15     | 16–31  | 16          | Lower 16 bits of the segment base address                                   |
| Base Address 16–23    | 32–39  | 8           | Middle 8 bits of the segment base address                                   |
| TYPE                  | 40–43  | 4           | Segment type (code/data or system-specific type)                             |
| S (Descriptor Type)   | 44     | 1           | 0 = system segment, 1 = code/data segment                                    |
| DPL (Privilege)       | 45–46  | 2           | Descriptor privilege level (0–3, 0 = highest privilege)                     |
| P (Present)           | 47     | 1           | Segment present in memory (1 = present, 0 = not present)                    |
| Segment Limit 16–19   | 48–51  | 4           | High 4 bits of the segment size                                             |
| AVL                   | 52     | 1           | Available for system software                                               |
| L                     | 53     | 1           | 64-bit code segment flag (IA-32e mode only)                                 |
| D/B (Default size)    | 54     | 1           | 0 = 16-bit segment, 1 = 32-bit segment                                      |
| G (Granularity)       | 55     | 1           | 0 = limit in bytes, 1 = limit in 4 KiB pages                                |
| Base Address 24–31    | 56–63  | 8           | Highest 8 bits of the segment base address                                   |

---

***Notes***

- **Segment Limit**: Combined from lower 16 bits and upper 4 bits; scaled by G flag if set.  
- **Base Address**: Combined from Base 0–15, 16–23, 24–31 to get full 32-bit linear base.  
- **TYPE & S**: Determine whether segment is code, data, or system; also indicate read/write/execute permissions.  
- **DPL**: Sets the privilege level required to access the segment; 0 = kernel, 3 = user.  
- **P (Present)**: If cleared, accessing the segment triggers a segment-not-present fault.  
- **AVL**: Reserved for OS or software usage; does not affect hardware behavior.  
- **L (64-bit)**: Only used in IA-32e long mode; ignored in 32-bit mode.  
- **D/B**: Determines default operand size for code segments, or stack pointer size for data/stack segments.  
- **G (Granularity)**: Scales segment limit: if G=1, limit is multiplied by 4 KiB.  

