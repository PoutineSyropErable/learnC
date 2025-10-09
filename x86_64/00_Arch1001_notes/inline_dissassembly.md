GCC uses GNU Assembler (GAS syntax) = AT&T syntax 

The code with these notes: 
"/home/francois/Documents/zzz__PersonalProjects/Learn C And Assembly/Exercises/x86_64/01_Arch1001_code/Inline Assembly/inline_dissassembly.c"

```c
asm("nop"); 
asm("movw $1234, %eax");

asm("movl -0x4(%rbp), %eax\n"
    "comp $0xdeadbeef, %eax\n"
    "je MyLabel\n"
    "xor %eax, %eax\n"
    "MyLabel: movw $0xFFFF, %cx\n"
    "and %ecx, %eax");

```

https://www.ibiblio.org/gferg/ldp/GCC-Inline-Assembly-HOWTO.html


---
# Extended ASM
clobbered registers: List of registers that will be modified, and so, it's too tell gcc that it needs to save and restore before and after. 


# GCC Inline Assembly Guide

## Basic vs Extended Inline Assembly

In **basic inline assembly**, we only had instructions. In **extended assembly**, we can also specify the operands. It allows us to specify:

- Input registers  
- Output registers  
- A list of clobbered registers  

It is **not mandatory** to specify the registers to use; you can leave that to GCC, which often fits better into GCC’s optimization scheme.  

---

## Extended Assembly Format

The basic format is:

```c
asm ( assembler template 
    : output operands                  /* optional */
    : input operands                   /* optional */
    : list of clobbered registers      /* optional */
    );
```

- The **assembler template** consists of assembly instructions.  
- Each operand is described by:
  - An **operand-constraint string**
  - Followed by the **C expression** in parentheses  
- **Colons** separate the assembler template from the output operands and the input operands.  
- **Commas** separate operands within each group.  
- The total number of operands is limited to **10** or the maximum number in any instruction pattern in the machine description, whichever is greater.  

> **Note:** If there are no output operands but there are input operands, you must place **two consecutive colons** `::` where the output operands would go.

---

## Example 1

```c
asm ("cld\n\t"
     "rep\n\t"
     "stosl"
     : /* no output registers */
     : "c" (count), "a" (fill_value), "D" (dest)
     : "%ecx", "%edi" 
     );
```

**Explanation:**

- Fills the memory at `dest` with `fill_value`, `count` times.  
- Declares that `%eax` and `%edi` are **clobbered**, so GCC won’t assume they contain valid data afterwards.

---

## Example 2

```c
int a = 10, b;
asm ("movl %1, %%eax; 
      movl %%eax, %0;"
     :"=r"(b)        /* output */
     :"r"(a)         /* input */
     :"%eax"         /* clobbered register */
     );
```

**Explanation:**

- `b` is the output operand, referred to by `%0`.  
- `a` is the input operand, referred to by `%1`.  
- `"r"` is a **constraint** allowing GCC to choose any register.  
- `=` in the output constraint marks it as **write-only**.  
- Double `%` (`%%eax`) differentiates actual registers from operand references.  
- `%eax` in the clobber list tells GCC that `%eax` will be modified inside `asm`.  

After execution, the **value of `b` is updated** with the value of `a`.

---

## Key Points

1. **Operands:**
   - Input: C values you want to read inside the asm block.  
   - Output: C variables that will receive values from the asm block.  
   - Clobbered: Registers modified inside the asm block that GCC shouldn’t reuse.  

2. **Constraints:**  
   - `"r"` → use any general-purpose register  
   - `"="` → write-only (output)  

3. **Register Prefix:**  
   - Operands are referenced with `%0`, `%1`, etc.  
   - Actual registers need `%%` prefix to avoid conflicts.  

4. **Effect Outside asm:**  
   - Output variables reflect changes made inside the `asm` block.  

---



From the code: 
"/home/francois/Documents/zzz__PersonalProjects/Learn C And Assembly/Exercises/x86_64/01_Arch1001_code/Inline Assembly/inline_dissassembly.c"

```c
static inline long sys_open(const char* filename, int flags, int mode) {
	long ret;
	asm volatile(
	    ".intel_syntax noprefix\n\t"
	    "mov rdi, %1\n\t" /* arg1: filename */
	    "mov rsi, %2\n\t" /* arg2: flags */
	    "mov rdx, %3\n\t" /* arg3: mode */

	    "mov rax, 2\n\t"  /* syscall number for sys_open */
	    "syscall\n\t"     /* invoke the syscall */
	    "mov %0, rax\n\t" /* store return value */

	    ".att_syntax prefix\n\t"
	    : "=r"(ret)
	    : "r"(filename), "r"((long)flags), "r"((long)mode)
	    : "rax", "rdi", "rsi", "rdx");
	return ret;
}

// sys_read(fd, buf, count)
static inline long sys_read(int fd, void* buf, unsigned long count) {
	long ret;
	__asm__ volatile(
	    ".intel_syntax noprefix\n\t"
	    "mov rdi, %1\n\t" // fd
	    "mov rsi, %2\n\t" // buf
	    "mov rdx, %3\n\t" // count

	    "mov rax, 0\n\t" // syscall number for read
	    "syscall\n\t"

	    "mov %0, rax\n\t"
	    ".att_syntax prefix\n\t"
	    : "=r"(ret)
	    : "r"((long)fd), "r"(buf), "r"(count)
	    : "rax", "rdi", "rsi", "rdx");
	return ret;
}

static inline long sys_write(int fd, const void* buf, size_t count) {
	long ret;
	asm volatile(
	    ".intel_syntax noprefix\n\t"
	    "mov rdi, %1\n\t" // fd
	    "mov rsi, %2\n\t" // buf
	    "mov rdx, %3\n\t" // count

	    "mov rax, 1\n\t" // syscall number: sys_write
	    "syscall\n\t"

	    "mov %0, rax\n\t" // return bytes written
	    ".att_syntax prefix\n\t"
	    : "=r"(ret)
	    : "r"((long)fd), "r"(buf), "r"(count)
	    : "rax", "rdi", "rsi", "rdx");
	return ret;
}

static inline long sys_close(int fd) {
	long ret;
	asm volatile(
	    ".intel_syntax noprefix\n\t"
	    "mov rdi, %1\n\t" // fd

	    "mov rax, 3\n\t" // syscall number: sys_close
	    "syscall\n\t"
	    "mov %0, rax\n\t"

	    ".att_syntax prefix\n\t"
	    : "=r"(ret)
	    : "r"((long)fd)
	    : "rax", "rdi");
	return ret;
}


```


# Raw byes


```c
asm(".byte 0x90"); // nop
asm(".byte 0x55"); // push rbp
asm(".byte 0x48"); // mov rbp rsp
```
