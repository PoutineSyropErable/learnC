#include <fcntl.h> // O_WRONLY, O_CREAT, O_TRUNC, etc.
#include <stdio.h>
#include <sys/stat.h>  // S_IRUSR, S_IWUSR, etc.
#include <sys/types.h> // size_t, ssize_t

/* =============== The notes ===============:
    "/home/francois/Documents/zzz__PersonalProjects/Learn C And Assembly/Exercises/x86_64/00_Arch1001_notes/inline_dissassembly.md"
*/

#define asm __asm__
#define MODE_644 S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH

// Intel, noprefix
/*
No prefix is for no %rax, just rax. No %prefix.

then att prefix, to say %rax is needed
*/

// Clobbered
/*
You have to say rax is clobbered, even if it's the end of the function.
*/

static inline long sys_open_att(const char* filename, int flags, int mode) {
	long ret;
	asm volatile(
	    "movq $2, %%rax\n\t" /* syscall number for sys_open */
	    "movq %1, %%rdi\n\t" /* arg1: filename */
	    "movq %2, %%rsi\n\t" /* arg2: flags */
	    "movq %3, %%rdx\n\t" /* arg3: mode */
	    "syscall\n\t"        /* invoke the syscall */
	    "movq %%rax, %0\n\t" /* return value in ret */
	    : "=r"(ret)
	    : "r"(filename), "r"((long)flags), "r"((long)mode)
	    : "%rax", "%rdi", "%rsi", "%rdx");
	return ret;
}

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

int main() {
	int a = 5, b = 0;

	__asm__ volatile(
	    ".intel_syntax noprefix;"
	    "mov eax, %[val];"
	    "add eax, 2;"
	    "mov %[out], eax;"
	    ".att_syntax prefix;"
	    // Need to switch back to .att syntax otherwise fucked
	    : [out] "=r"(b)
	    : [val] "r"(a));

	printf("\n\n==SOP==\n\nb = %d\n", b); // Output: b = 7

	// write to a file
	const char* msg = "69\n";
	long fd = sys_open("nice.txt", O_WRONLY | O_CREAT | O_TRUNC, MODE_644);
	if (fd < 0)
		return 1;

	sys_write(fd, msg, 3);
	sys_close(fd);
	return 0;

	return 0;
}
