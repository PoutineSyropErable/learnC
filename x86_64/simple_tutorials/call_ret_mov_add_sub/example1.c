

int func() {
	return 0xbeef;
}

int main() {
	func();
	return 0xf00d;
}

void _start() {
	int ret = main();
	__asm__ volatile(
	    "mov %0, %%rdi\n"  // exit code in RDI
	    "mov $60, %%rax\n" // syscall number 60 = sys_exit
	    "syscall\n"
	    :
	    : "r"((long)ret)
	    : "%rax", "%rdi");
}
