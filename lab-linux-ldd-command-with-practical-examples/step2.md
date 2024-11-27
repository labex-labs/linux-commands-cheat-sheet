# Identify Dynamic Dependencies of a Binary

In this step, we will learn how to use the `ldd` command to identify the dynamic dependencies of a binary file.

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

The output shows that the `hello` binary depends on the `libmylib.so` dynamic library, which is not found. This means that the `hello` binary will not be able to run correctly until the missing dependency is resolved.

Example output:

```
        linux-vdso.so.1 (0x00007ffff7ffd000)
        libmylib.so => not found
        libc.so.6 => /lib/x86_64-linux-gnu/libc.so.6 (0x00007f7f7a5f0000)
        /lib64/ld-linux-x86-64.so.2 => /lib64/ld-linux-x86-64.so.2 (0x00007f7f7a7c0000)
```

The `ldd` command is a powerful tool for identifying the dynamic dependencies of a binary file, which is essential for troubleshooting and managing software dependencies.
