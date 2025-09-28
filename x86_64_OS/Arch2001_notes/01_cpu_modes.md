First Mode: (Sucked from a security perspective) 


# **__Real-address Mode (16 bit, boot state)__**
- This mode implement the programming environment of the Intel 8086 processor with extensions (such as the ability to switch to 
    - protected or system management mode). The processor is place in real-address mode following *power-up* or a *reset.* 
    - DOS runs in real mode 
    - No virtual memory, no priviledge rings, 16 bit modes. 
    - Covered more in Arch4001

--- 
Second Mode: (if recieved a SMI: System management Interupt. )
# **__System Management Mode (16 bit originally, 32 bit on modern cpus, 64 bit SMM extensions very rare)__**
- This mode provide an operating system or executive with a transparent mechanism for implementing platform specific functions such 
    - as *power management* and system security. The processor enters SMM when the external SMM interupt pin (SMI#) is activated or an SMI is 
    - recieved from the advanced programmable interupt controller (APIC). 

- SMM has the capability to protect its memory from all other priviledged code (eg. OSes and VMMs), so it is for all intents and purposes 
    - the most priviledged execution mode on the CPU. 
    
- Covered More in Arch4001. This is relevant to stuff like bios, and power management. 


---
Third Mode: (If in real mode, you set PE = 1)

# **__Protected Mode (32 bit)__**
- This mode is the native state of the processor. Among the capabilities of protected mode is the ability to execute 'real-address mode' 8086 software 
    - in a protected, multi tasking environment. This feature is called virtual-8086 mode, although it's not actually a processor mode. 
    - Virtual-8086 mode is actually a protected mode attribute that can be enabled for any task. 

- Virtual 8086 is just backward compatibility. Prof and Intel says: It's not really its own mode. 
- Protected mode adds support for virtual memory and priviledged rings.  *(It's where those features are first added)*
- Modern OSes operate in protected mode*
    - ^ OS for 32 bit computer are in protected mode, Windows, Linux, Mac, BSD are 64 bit mode (*Long mode*)




---- 
Fourth Mode: (In protected mode, set LME=1, CR0.PG=1*) 
# **__Long Mode (IA-32e / Intel 64 / x86_64 Mode)__**

- When AMD created the x86_64 extension, they called it *Long Mode*. 
    - Hence why you'll see bit labeled as Long Mode Enable (LME) on the FSM. (FSM = Finite State Machine: The diagram)


- Intel calls it *IA-32e* (extended) or *Intel64* in their manuals


------ 
Paths: 

You always start in *Real Mode*, you try to get to *protected mode* as soon as possible, and then, a 
64 bit capable OS will move it's way to *Long Mode*


*Real Mode (Boot): 16 Bits* -> *Protected Mode: 32 bits* -> *Long Mode: 64 bits*
and if you reset, you hit real mode again

AMD have their own Finite State Machine diagram, and it's better looking




--- 
AMD (Should be the same thing, just again)

- Start in Real Mode. (16 bits) 
    - Set CR0.PE =1  -> Go to Protected Mode. 

- In protected mode ( 32 bit)
    - Set EFER.LME=1, CR4.PAE=1 then CR0.PG=1 -> Compatibility mode. 

- In Compatibility mode (32 bit). Use to emulate 32 bit mode. Like if your OS want to run a 32 bit application. 
- So, you pass by it instantly during boot. And then may return to it later
    - Set CS.L=1 -> 64 bit mode. 


Compatibility and 64 bit mode are a part of Long Mode. 
