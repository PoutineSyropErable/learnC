# GDB Dashboard Notes for Beginners

## 1. Launching GDB

~~~
gdb ./build/hello
~~~

- `./build/hello` is your compiled executable (with debugging symbols `-g`).  
- If you’re debugging assembly, make sure you didn’t strip symbols (`strip` removes them).  

---

## 2. Basic GDB Commands

| Command | Purpose |
|---------|---------|
| `break main` | Set a breakpoint at `main` |
| `break *0xADDRESS` | Set a breakpoint at a specific address |
| `run` | Start the program |
| `next` / `n` | Step over (execute the next line, skip into calls) |
| `step` / `s` | Step into a function call |
| `continue` / `c` | Resume execution until next breakpoint |
| `finish` | Run until current function returns |
| `info registers` / `i r` | Show CPU registers |
| `display /x $reg` | Automatically display register in hex |
| `x/Nx ADDR` | Examine memory (N = number of units, x = hex, ADDR = address) |
| `quit` / `q` | Exit GDB |



```gdb
b main 
call main 
r 
dashboard memory watch $rsp 0x80

si # step one instruction
```
---

## 3. GDB Dashboard Panels

Dashboard divides into panels. Key ones:

- **Assembly** → Current instructions around `$rip`
- **Breakpoints** → Shows all breakpoints set
- **Registers** → Live CPU registers
- **Stack** → Current call stack (addresses & frames)
- **Memory** → Memory watch (hex dump)
- **Variables** → Local variables
- **Threads** → Active threads
- **Source** → Source code view (if symbols available)
- **Expressions** → Displayed expressions
- **History** → Command history

---

## 4. Viewing & Watching Memory

- **Stack memory**:

~~~
dashboard memory watch $rsp 0x80
~~~

- `$rsp` = stack pointer, `0x80` = 128 bytes to watch  
- Updates live as you step through instructions  

- **Specific address**:

~~~
x/16gx $rsp      # Examine 16 qwords starting at $rsp
x/32xb 0x555555555000  # Examine 32 bytes
x/s $rsi        # Show memory at rsi as string
~~~

> If you see garbage, maybe it’s not a valid pointer or outside memory.

---

## 5. Viewing Registers

- Registers update live in the **Registers panel**.  

Useful GDB commands:

~~~
info registers
display /x $rax
display /x $rdi
display /x $rsp
~~~

- `$rdi, $rsi, $rdx, $rcx, $r8, $r9` → First 6 integer/pointer arguments on **x86-64 Linux calling convention**
- Return values → `$rax`

---

## 6. Working With the Stack

- Stack panel shows frames:

~~~
info frame
backtrace        # short: bt
~~~

- Use `dashboard memory watch $rsp 0x80` to see stack values change live.

---

## 7. Displaying Variables

- Local variables appear in **Variables panel**.
- To watch manually:

~~~
display var_name
~~~

- Example:

~~~
display /x arg_a
display /d arg_b   # decimal
~~~

---

## 8. Watching Expressions

- **Expressions panel** allows auto-watch expressions:

~~~
display /x $rsi
display /d $eax
~~~

- `$rsi` points to a string? View with:

~~~
x/s $rsi
~~~

---

## 9. Assembly-Specific Tips

- Step instruction by instruction:

~~~
stepi   # ssi also works in some versions
nexti
~~~

- View disassembly around `$rip`:

~~~
disassemble $rip-16, $rip+16
~~~

- Breakpoints in assembly:

~~~
break *0x555555555119
~~~

---

## 10. Useful Dashboard Key Bindings / Navigation

- Scroll panels with `Ctrl+U / Ctrl+D`  
- Switch focus with `Tab`  
- Quit dashboard panels with `q`  

> Panels update live during `step`, `next`, `continue`.

---

## 11. Minimal Debugging Workflow Example

1. Launch:

~~~
gdb ./build/hello
~~~

2. Enable dashboard:

~~~
dashboard -m
~~~

3. Break at main:

~~~
break main
run
~~~

4. Watch registers & stack:

~~~
display /x $rdi
display /x $rsi
dashboard memory watch $rsp 0x80
~~~

5. Step through:

~~~
stepi
nexti
~~~

6. Inspect stack / memory:

~~~
x/16gx $rsp
x/s $rsi
~~~

7. Inspect function calls:

~~~
info frame
backtrace
~~~

8. Exit:

~~~
quit
~~~

---

## 12. Tips for Beginners

- Always compile with `-g` to keep debugging symbols.
- `$rsp` points to top of stack. `$rbp` = frame base.
- Arguments passed in registers on x86-64: `rdi, rsi, rdx, rcx, r8, r9`.
- Use `stepi` for instruction-level debugging.
- Use memory watch to track dynamic changes, especially stack.
- Combine **Registers + Stack + Memory** panels for IDE-like experience.

