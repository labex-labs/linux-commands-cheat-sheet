# Understand the Purpose of addr2line Command

In this step, you will learn about the purpose of the `addr2line` command in Linux. The `addr2line` command is a tool used to translate addresses into file names and line numbers. It is particularly useful when working with debugging information, such as stack traces or core dumps, to determine the source code location corresponding to a particular address.

The `addr2line` command takes an address as input and uses the debugging information in an object file (such as an executable or shared library) to determine the file name and line number associated with that address. This can be helpful in understanding the context of a crash or other issue in a program.

Let's start by exploring the basic usage of the `addr2line` command:

```bash
addr2line -e <executable> <address>
```

Here, `<executable>` is the name of the executable file containing the debugging information, and `<address>` is the hexadecimal address you want to translate.

Example:

```bash
addr2line -e /bin/ls 0x4004e0
```

Example output:

```
/usr/src/debug/coreutils/8.32-r0/coreutils-8.32/src/ls.c:1372
```

The output shows that the address `0x4004e0` corresponds to line 1372 in the file `/usr/src/debug/coreutils/8.32-r0/coreutils-8.32/src/ls.c`.

This information can be very useful when debugging issues in a program, as it allows you to quickly identify the source code location associated with a particular address.
