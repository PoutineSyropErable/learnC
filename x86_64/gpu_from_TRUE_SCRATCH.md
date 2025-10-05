today, i spent like 3 hours figuring out with chatgpt how the gui work, from 

application -> wayland -> drm/dkms -> kernel syscalls -> sending gpu command through mmio 

how to discover the mmio address of the gpu. 


An appliaction has its own gpu buffer. 
It can write to it:
- If its shared memory, with virtual memory (paging), the application can do cpu write to it. 
- Always, it can do a syscall to ask the kernel to send commands to the gpu to do operations on the address inside the buffer. 

Once it's done with all the writes and a consistent frame state is achieved, it sends a ipc message to wayland telling it: The frame is ready. 
That ipc pass through the kernel and reaches wayland. 

# Note DRM isn't for digital rights management. It's for DISPLAY R ... It's not encryption and enclave. It's just libc wrapper of kernel syscalls to gpu commands, especially those for display
Wayland then use kms/drm, which wraps arround the kernel syscalls that sends command to the gpu. 
The framebuffer is the bounding box of the monitors. 

In this case, the command to the gpu is a gpu memcopy (gpu->gpu). And it will copy the applications vram that represents its pixel image frame to the framebuffer at the correct location. 
The gou memcopy has 2d copy instruction, which knows the source and destination stride. So fast copy

==== 
At the start of the pc, 

Between a set addres written in the pcie documentation. 
A and B (maybe 99mb and 100mb), there will be pcie rsdp. A pointer to the table. 

That pointer is constant offset from a certain magic value. So scan until you find that magic value
Onec you go to that pointers address, you are in a constant size tree. Hardwired shape and size. So, you can navigate it, and find the headers of each pcie ports. 

in the start of the header, theres manifacturer, device name, ... 

You can compare with the hardcoded graohics card device name. 

Then, it will tell you information about the device, and mmio address. The manufacter tells you how to read it. 

The important values are called BAR. they are the values not used to find which device it is, but the property of that device \["Information to scans", ... , "BARS"]

From that, you have mmio address. 

==== 
To send a command, you would do like 

```asm
mov [cmd_ptr + 0x0], val0 
mov [cmd_ptr + 0x8], val1
mov [cmd_ptr + 0x16], val2 
# the arguments of the command. ()

# send a signal for command state finished. So it doesnt 
mov [ready_ptr], 1 ; made up, less precise. But we need an `int` or `syscall` or `call` equivalent
# double checked this and it's correct. 
# ready_ptr is mmiod to a specific register on the gpu

# then, you will need to know that the cmd ptr has changed. 

add cmd_ptr, 0x32 

# AND, wrap arround to base_cmd_ptr if it surpass top_cmd_ptr. 
# The command pointer is memory mapped. Maybee 1mb of vram is setup for it. 
# but too lazy to write the asm for it

```


---
# How to get the output
Then, either with polling, or interrupt. (Let's describe interupts) 

You can book keep a list of send, but not finished commands. 
Pop from that list when you recieve the cpu interupt. 

So you know the asnwer to what youve got the response. 

```asm
mov rax, [gpu_command_result_state_ptr]  
# Those are command completiuons registers (status registers, they are exposed via mmio)
# but its for states and errors. small a few bytes.


```
But for actual output results. 
One of the command argument would be an mmiod gpu buffer. It's a buffer with write permission. (For the gpu). And the cpu must have read permission. 
More permission can be given. 

Then, you simply mmio read the output from the buffer. 
like in c: 
```c

void func(int a, int* output); 

```

you can then send that result back to the kernel code that asked for it. 
Maybe, in the list of command send, the return address is saved to. So, jump to it. 
That kernel code now continue executing with the result from that command. 


GPU paging exist so that the bounding box doesn't have wasted memory for where monitors dont exist. 

Also, once you read the BAR from the pcie header, you already know the possible range of address that could be mmiod. 
So,y ou can write a static list of range with a DON'T TOUCH! sticker




---
# MMIO is king. 

🧠 1. Memory-Mapped I/O (MMIO)

✅ What it is:
Device registers appear as physical memory addresses.
CPU reads/writes to those addresses → the device reacts.

✅ Mechanism:

The PCI/PCIe BARs (Base Address Registers) map device register ranges into physical memory space.

The CPU simply uses mov/store instructions.

The chipset translates those into PCIe memory transactions.

✅ Used for:

Control registers (command queues, status flags, DMA descriptors, etc.)

Device-local memory (VRAM, framebuffers, etc.)

✅ Examples:

GPU command queue and control registers.

Network card transmit ring buffer pointer.

Sound card buffer position register.

✅ It’s the most universal.
Almost all modern devices rely on MMIO as the actual control mechanism.

🧾 2. Port-Mapped I/O (PMIO / I/O ports)

🕹️ Legacy method mostly used by old x86 devices.

Uses special instructions: in, out.

Address space is separate from normal memory.

Still used by some legacy hardware (like PS/2 controllers, PIT, old VGA).

✅ Mechanism:

x86 CPU has a separate I/O space (64K addresses).

Accessed via dedicated instructions rather than memory ops.

⚠️ Modern PCIe devices don’t use it — they only use MMIO.

⚙️ 3. DMA (Direct Memory Access)

💡 Technically not control, but data transfer.

CPU writes MMIO registers to tell device “use this memory region.”

Then the device reads/writes main memory on its own via bus-master DMA.

CPU can poll a register or receive an interrupt when done.

✅ Used for:

Network packets, disk I/O, GPU buffer uploads, etc.

So: CPU uses MMIO to set up DMA, not to transfer the actual data itself.

🔔 4. Interrupts (INTx / MSI / MSI-X)

🪄 Device → CPU communication (opposite direction).

Hardware line (or PCIe message) that notifies CPU something happened.

CPU receives interrupt → kernel interrupt handler runs.

✅ Mechanism:

Legacy IRQ pin or Message Signaled Interrupt (MSI).

Device writes a special PCIe message (basically, a memory write to a special APIC address).

✅ Used for:

Completion events (“frame rendered,” “packet sent,” etc.)

Errors or hotplug notifications.

So, while MMIO is CPU → Device, Interrupts are Device → CPU.

🧩 5. Side-channel buses (optional)

I²C, SPI, SMBus, LPC, etc. used for very simple control (sensors, fans, firmware).

Usually connected to chipset or EC (embedded controller), not GPU-class devices.

These are serial buses — still end up as register reads/writes, just slower.
