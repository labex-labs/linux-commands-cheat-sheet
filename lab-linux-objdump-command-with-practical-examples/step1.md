# Understand the Purpose of objdump Command

In this step, you will learn about the purpose of the `objdump` command in Linux. The `objdump` command is a powerful tool used to analyze the contents of object files, which are binary files that contain machine code and other information.

The `objdump` command can be used to disassemble the machine code in an object file, which means it can translate the binary instructions into a human-readable format. This can be useful for understanding how a program works, debugging issues, or even reverse-engineering software.

Let's start by creating a simple C program and using `objdump` to analyze its contents.

First, create a new file called `hello.c` in the `~/project` directory with the following content:

```c
#include <stdio.h>

int main() {
    printf("Hello, World!\n");
    return 0;
}
```

Next, compile the program using the `gcc` compiler:

```bash
cd ~/project
gcc -o hello hello.c
```

Now, let's use the `objdump` command to analyze the contents of the `hello` executable:

```bash
objdump -d hello
```

Example output:

```
hello:     file format elf64-x86-64

Disassembly of section .init:

0000000000001000 <_init>:
    1000:   f3 0f 1e fa             endbr64
    1004:   48 83 ec 08             sub    $0x8,%rsp
    1008:   48 8b 05 d9 2f 00 00    mov    0x2fd9(%rip),%rax        # 3fe8 <__gmon_start__>
    100f:   48 85 c0                test   %rax,%rax
    1012:   74 02                   je     1016 <_init+0x16>
    1014:   ff d0                   callq  *%rax
    1016:   48 83 c4 08             add    $0x8,%rsp
    101a:   c3                      retq
```

The `objdump` command disassembles the machine code in the `hello` executable, showing the low-level instructions that the processor will execute when the program runs. This can be useful for understanding how the program works and for debugging issues.

In the next step, you will explore the basic syntax and options of the `objdump` command.
