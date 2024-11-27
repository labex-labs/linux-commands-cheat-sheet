# Trace System Calls and Library Calls with ltrace

In this step, you will learn how to use the `ltrace` command to trace system calls and library calls made by a process.

Let's start by creating a new file called `syscall.c` in the `~/project` directory with the following content:

```c
#include <stdio.h>
#include <unistd.h>

int main() {
    printf("Hello, world!\n");
    sleep(2);
    return 0;
}
```

This program simply prints "Hello, world!" and then sleeps for 2 seconds.

Now, let's compile the `syscall.c` file and run it using `ltrace`:

```bash
gcc -o syscall syscall.c
ltrace ./syscall
```

Example output:

```
__libc_start_main(0x4005d0, 1, 0x7ffee7d9d3c8, 0x400660 <unfinished ...>
puts("Hello, world!")                                                                                                                    = 14
sleep(2)                                                                                                                                 = 0
+++ exited (status 0) +++
```

The output shows that the `syscall` program made a call to the `puts()` function to print the "Hello, world!" message, and a call to the `sleep()` function to pause the program for 2 seconds.

You can also use the `-c` option with `ltrace` to get a summary of the system calls and library calls made by the process:

```bash
ltrace -c ./syscall
```

Example output:

```
% time     seconds  usecs/call     calls    errors syscall
------ ----------- ----------- --------- --------- ----------------
 66.67    0.000002           2         1           write
 33.33    0.000001           1         1           sleep
 00.00    0.000000           0         1           fwrite
 00.00    0.000000           0         1           __libc_start_main
 00.00    0.000000           0         1           puts
------ ----------- ----------- --------- --------- ----------------
100.00    0.000003                     5           total
```

This output provides a breakdown of the system calls and library calls made by the `syscall` program, including the time spent in each call and the number of times each call was made.

`ltrace` can be a powerful tool for understanding the behavior of a program and identifying potential performance issues or areas for optimization. In the next step, you will learn how to analyze the output of `ltrace` and identify potential issues.
