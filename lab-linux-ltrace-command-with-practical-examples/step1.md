# Understand the Purpose and Functionality of ltrace

In this step, you will learn about the purpose and functionality of the `ltrace` command in Linux. `ltrace` is a powerful tool that allows you to trace system calls and library calls made by a process, which can be useful for debugging and performance analysis.

To begin, let's install the `ltrace` package on our Ubuntu 22.04 Docker container:

```bash
sudo apt-get update
sudo apt-get install -y ltrace
```

The `ltrace` command works by intercepting and recording the dynamic library calls made by a process. This can be useful for understanding how an application is interacting with the underlying system and identifying potential issues or performance bottlenecks.

Let's try a simple example to see how `ltrace` works. Create a new file called `hello.c` in the `~/project` directory with the following content:

```c
#include <stdio.h>

int main() {
    printf("Hello, world!\n");
    return 0;
}
```

Compile the `hello.c` file using the `gcc` compiler:

```bash
gcc -o hello hello.c
```

Now, let's run the `hello` program using `ltrace`:

```bash
ltrace ./hello
```

Example output:

```
__libc_start_main(0x4005d0, 1, 0x7ffee7d9d3c8, 0x400660 <unfinished ...>
puts("Hello, world!")                                                                                                                    = 14
+++ exited (status 0) +++
```

The output shows that the `hello` program made a call to the `puts()` function from the C standard library to print the "Hello, world!" message.

`ltrace` can be a valuable tool for understanding the inner workings of a program and identifying potential issues or areas for optimization. In the next step, you will learn how to use `ltrace` to trace system calls and library calls in more detail.
