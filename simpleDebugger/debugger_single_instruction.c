#include <linux/elf.h> // Definitions for ELF constants, and NT_X86_XSTATE for extended registers (XMM/YMM/ZMM)
#include <stdio.h>     // Standard I/O functions (printf, fprintf, perror)
#include <stdlib.h>
#include <stdlib.h>     // Standard library (exit)
#include <sys/ptrace.h> // ptrace syscall constants and function
#include <sys/types.h>  // PID type and other system types
#include <sys/uio.h>    // iovec structure for extended register sets (XMM/YMM/ZMM)
#include <sys/user.h>   // User-space register structures (user_regs_struct)
#include <sys/wait.h>   // waitpid and macros to check child status
#include <unistd.h>     // fork, execl, and other system calls

int main(int argc, char** argv) {
	if (argc < 2) {
		fprintf(stderr, "Usage: %s <elf_binary>\n", argv[0]);
		return 1;
	}

	pid_t child = fork();
	if (child == 0) {
		// Child: trace itself, then exec the ELF
		ptrace(PTRACE_TRACEME, 0, NULL, NULL);
		// The child execute the program
		execl(argv[1], argv[1], NULL); // argv[0] is conventionally the program name. so, the second argv[1], is argv[0] of the next process.
		perror("execl");               // errno is threadlocal. each thread has it's own copy. If execl fails, it will change errno extern global values.
		exit(1);                       // and it will read from that
	} else {
		// Parent: wait for child to stop
		int status;
		waitpid(child, &status, 0);

		struct user_regs_struct regs;

		for (int i = 0; i < 3; i++) {
			// Single-step instruction
			ptrace(PTRACE_SINGLESTEP, child, NULL, NULL);
			waitpid(child, &status, 0);

			// Read registers
			ptrace(PTRACE_GETREGS, child, NULL, &regs);
			printf("Instruction %d: RIP = 0x%llx\n", i + 1, regs.rip);
		}

		// Infinite stepping loop
		while (1) {
			ptrace(PTRACE_SINGLESTEP, child, NULL, NULL);
			waitpid(child, &status, 0);
			ptrace(PTRACE_GETREGS, child, NULL, &regs);
			printf("RIP = 0x%llx\n", regs.rip);
		}
	}

	return 0;
}

/*
request: What you want to do (e.g., attach, read memory, single step).

pid: PID of the target process.

addr: Used for memory or register operations.

data: Additional data (depends on request).

*/
long ptrace_fn(enum __ptrace_request request, pid_t pid,
               void* addr, void* data);

/*
Common requests:
Request	Meaning
PTRACE_TRACEME	Child says “I want to be traced by my parent”
PTRACE_ATTACH	Attach to an existing process
PTRACE_DETACH	Detach from a process
PTRACE_PEEKDATA	Read memory
PTRACE_POKEDATA	Write memory
PTRACE_SINGLESTEP	Execute one instruction and stop
PTRACE_CONT	Continue execution until next stop
*/

void other_functions(pid_t child, void* addr) {

	int status;

	// === Single-step an instruction ===
	ptrace(PTRACE_SINGLESTEP, child, NULL, NULL);
	waitpid(child, &status, 0); // child stops after 1 instruction

	// === Read a register (RIP on x86_64) ===
	struct user_regs_struct regs;
	ptrace(PTRACE_GETREGS, child, NULL, &regs);
	printf("RIP = 0x%llx\n", regs.rip);

	// === Modify a register ===
	regs.rip += 2; // skip 2 bytes for demo
	ptrace(PTRACE_SETREGS, child, NULL, &regs);

	// ======== Get floating registers =========
	struct iovec iov;
	unsigned char xstate[1024]; // large enough for all extended registers
	iov.iov_base = xstate;
	iov.iov_len = sizeof(xstate);
	ptrace(PTRACE_GETREGSET, child, (void*)NT_X86_XSTATE, &iov);
	// xstate now contains XMM/YMM/ZMM registers

	// === Read memory at an address ===
	long word = ptrace(PTRACE_PEEKDATA, child, (void*)regs.rip, NULL);
	printf("Memory at RIP: 0x%lx\n", word);

	// === Write memory at an address ===
	long new_word = 0x90909090; // e.g., NOP sled
	ptrace(PTRACE_POKEDATA, child, (void*)regs.rip, new_word);

	// === Continue execution normally ===
	ptrace(PTRACE_CONT, child, NULL, NULL);
	waitpid(child, &status, 0);
}

void floating_registers(pid_t child) {
	int status;

	// 1. Wait for the child to stop (after PTRACE_TRACEME + exec)
	waitpid(child, &status, 0);

	// 2. Prepare buffer to hold all extended registers
	// sizeof buffer should be >= xsave area size (typically 512-1024 bytes is safe)
	unsigned char xstate[1024];
	memset(xstate, 0, sizeof(xstate));

	struct iovec iov;
	iov.iov_base = xstate;
	iov.iov_len = sizeof(xstate);

	// 3. Read extended registers (XMM, YMM, ZMM) from the child
	// NT_X86_XSTATE tells the kernel we want the full extended state
	if (ptrace(PTRACE_GETREGSET, child, (void*)NT_X86_XSTATE, &iov) == -1) {
		perror("ptrace GETREGSET");
		return;
	}

	// 4. Access XMM0 (first 128-bit SSE register)
	// XMM0 starts at offset 160 in the xsave area on x86_64 (for most Linux/glibc setups)
	// You might want to confirm using `struct _xsave` if available.
	float xmm0_float;
	memcpy(&xmm0_float, xstate + 160, sizeof(float)); // take the lowest 32 bits of XMM0
	printf("Current XMM0 (float) = %f\n", xmm0_float);

	// 5. Modify XMM0
	float new_value = 3.14159f;
	memcpy(xstate + 160, &new_value, sizeof(float));

	// 6. Write back modified extended registers
	if (ptrace(PTRACE_SETREGSET, child, (void*)NT_X86_XSTATE, &iov) == -1) {
		perror("ptrace SETREGSET");
		return;
	}

	printf("XMM0 modified to %f\n", new_value);

	// 7. Single step or continue child if desired
	ptrace(PTRACE_SINGLESTEP, child, NULL, NULL);
	waitpid(child, &status, 0);
}
