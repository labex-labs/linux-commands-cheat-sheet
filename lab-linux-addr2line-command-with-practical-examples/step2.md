# Explore the Basic Syntax and Options of addr2line

In this step, you will explore the basic syntax and options of the `addr2line` command. Understanding the available options will help you use `addr2line` more effectively when working with debugging information.

Let's start by reviewing the basic syntax of the `addr2line` command:

```bash
addr2line [options] <address> [<address> ...]
```

Here are some common options for the `addr2line` command:

- `-e <executable>`: Specify the executable file containing the debugging information.
- `-f`: Display the function name corresponding to each address.
- `-C`: Demangle C++ symbol names.
- `-s`: Display the section name for each address.
- `-p`: Display the source file and line number in the format "file:line".

Example:

```bash
addr2line -e /bin/ls -f 0x4004e0
```

Example output:

```
ls_file
/usr/src/debug/coreutils/8.32-r0/coreutils-8.32/src/ls.c:1372
```

In this example, the `-f` option is used to display the function name (`ls_file`) corresponding to the address `0x4004e0`.

You can also provide multiple addresses to the `addr2line` command:

```bash
addr2line -e /bin/ls 0x4004e0 0x4004f0
```

Example output:

```
ls_file
/usr/src/debug/coreutils/8.32-r0/coreutils-8.32/src/ls.c:1372
ls_file
/usr/src/debug/coreutils/8.32-r0/coreutils-8.32/src/ls.c:1373
```

This will display the source file and line number for each of the provided addresses.

By exploring the different options available with the `addr2line` command, you can customize the output to suit your debugging needs.
