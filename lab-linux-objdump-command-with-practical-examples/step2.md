# Explore the Basic Syntax and Options of objdump

In this step, you will explore the basic syntax and options of the `objdump` command. The `objdump` command has a variety of options that allow you to customize the output and extract specific information from the object file.

Let's start by reviewing the basic syntax of the `objdump` command:

```bash
objdump [options] file
```

Here are some of the most common options for the `objdump` command:

- `-d` or `--disassemble`: Disassemble the executable code.
- `-S` or `--source`: Intermix source code with disassembly.
- `-t` or `--syms`: Display the contents of the symbol table.
- `-x` or `--all-headers`: Display all available header information.
- `-h` or `--section-headers`: Display the contents of the section headers.

Let's try some of these options with the `hello` executable we created in the previous step:

```bash
# Display the disassembly with source code
objdump -dS hello

# Display the symbol table
objdump -t hello

# Display all available header information
objdump -x hello
```

Example output:

```
hello:     file format elf64-x86-64

Disassembly of section .text:

0000000000001000 <_init>:
    1000:   f3 0f 1e fa             endbr64
    1004:   48 83 ec 08             sub    $0x8,%rsp
    1008:   48 8b 05 d9 2f 00 00    mov    0x2fd9(%rip),%rax        # 3fe8 <__gmon_start__>
    100f:   48 85 c0                test   %rax,%rax
    1012:   74 02                   je     1016 <_init+0x16>
    1014:   ff d0                   callq  *%rax
    1016:   48 83 c4 08             add    $0x8,%rsp
    101a:   c3                      retq

0000000000001020 <__libc_csu_init>:
    1020:   f3 0f 1e fa             endbr64
    1024:   41 57                   push   %r15
    1026:   4c 8d 3d 93 2c 00 00    lea    0x2c93(%rip),%r15        # 3cc0 <__frame_dummy_init_array_entry>
    102d:   41 56                   push   %r14
    102f:   49 89 e6                mov    %rsp,%r14
    1032:   41 55                   push   %r13
    1034:   41 54                   push   %r12
    1036:   4c 8d 25 83 2c 00 00    lea    0x2c83(%rip),%r12        # 3cc0 <__frame_dummy_init_array_entry>
    103d:   55                      push   %rbp
    103e:   48 8d 2d 83 2c 00 00    lea    0x2c83(%rip),%rbp        # 3cc8 <__do_global_dtors_aux_fini_array_entry>
    1045:   53                      push   %rbx
    1046:   4c 29 e5                sub    %r12,%rbp
    1049:   48 83 ec 08             sub    $0x8,%rsp
    104d:   e8 ae fe ff ff          callq  f00 <_init>
    1052:   48 c1 fd 03             sar    $0x3,%rbp
    1056:   74 1f                   je     1077 <__libc_csu_init+0x57>
    1058:   31 db                   xor    %ebx,%ebx
    105a:   0f 1f 44 00 00          nopl   0x0(%rax,%rax,1)
    105f:   4c 89 f2                mov    %r14,%rdx
    1062:   4c 89 ee                mov    %r13,%rsi
    1065:   44 89 e7                mov    %r12d,%edi
    1068:   41 ff 14 df             callq  *(%r15,%rbx,8)
    106c:   48 83 c3 01             add    $0x1,%rbx
    1070:   48 39 dd                cmp    %rbx,%rbp
    1073:   75 ea                   jne    105f <__libc_csu_init+0x3f>
    1075:   48 83 c4 08             add    $0x8,%rsp
    1079:   5b                      pop    %rbx
    107a:   5d                      pop    %rbp
    107b:   41 5c                   pop    %r12
    107d:   41 5d                   pop    %r13
    107f:   41 5e                   pop    %r14
    1081:   41 5f                   pop    %r15
    1083:   c3                      retq

0000000000001084 <__libc_csu_fini>:
    1084:   f3 0f 1e fa             endbr64
    1088:   c3                      retq

0000000000001089 <main>:
    1089:   f3 0f 1e fa             endbr64
    108d:   55                      push   %rbp
    108e:   48 89 e5                mov    %rsp,%rbp
    1091:   bf 00 00 00 00          mov    $0x0,%edi
    1096:   e8 85 fe ff ff          callq  f20 <puts@plt>
    109b:   b8 00 00 00 00          mov    $0x0,%eax
    10a0:   5d                      pop    %rbp
    10a1:   c3                      retq
    10a2:   66 2e 0f 1f 84 00 00 00 00 00 nopw   %cs:0x0(%rax,%rax,1)
    10ac:   0f 1f 40 00             nopl   0x0(%rax)

Disassembly of section .fini:

00000000000010b0 <_fini>:
    10b0:   f3 0f 1e fa             endbr64
    10b4:   48 83 ec 08             sub    $0x8,%rsp
    10b8:   48 83 c4 08             add    $0x8,%rsp
    10bc:   c3                      retq
```

The output shows the disassembly of the `hello` executable, including the source code intermixed with the machine instructions. This can be very useful for understanding how the program works at a low level.

In the next step, you will analyze the output of `objdump` on the `hello` program in more detail.
