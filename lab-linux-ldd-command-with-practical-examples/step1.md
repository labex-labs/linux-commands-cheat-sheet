# Understand the Purpose of the ldd Command

In this step, we will explore the purpose of the `ldd` command in Linux. The `ldd` command is a tool that allows you to identify the dynamic library dependencies of a binary file.

First, let's create a simple C program that uses a dynamic library:

```c
// hello.c
#include <stdio.h>
#include <mylib.h>

int main() {
    print_message();
    return 0;
}
```

Now, let's compile the program and use `ldd` to check its dependencies:

```bash
$ gcc -o hello hello.c -L. -lmylib
$ ldd hello
        linux-vdso.so.1 (0x00007ffff7ffd000)
        libmylib.so => not found
        libc.so.6 => /lib/x86_64-linux-gnu/libc.so.6 (0x00007f7f7a5f0000)
        /lib64/ld-linux-x86-64.so.2 => /lib64/ld-linux-x86-64.so.2 (0x00007f7f7a7c0000)
```

The output shows that the `hello` binary depends on the `libmylib.so` dynamic library, which is not found. This is a common issue when working with dynamic libraries, and the `ldd` command can help you identify and troubleshoot such problems.

Example output:

```
        linux-vdso.so.1 (0x00007ffff7ffd000)
        libmylib.so => not found
        libc.so.6 => /lib/x86_64-linux-gnu/libc.so.6 (0x00007f7f7a5f0000)
        /lib64/ld-linux-x86-64.so.2 => /lib64/ld-linux-x86-64.so.2 (0x00007f7f7a7c0000)
```

The `ldd` command is a valuable tool for understanding the dynamic dependencies of a binary, which is essential for effective software management and troubleshooting.
