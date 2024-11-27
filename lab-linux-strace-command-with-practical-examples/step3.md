# Debugging Processes with strace

In this step, we will learn how to use the strace command to debug running processes and identify potential issues.

Let's start by creating a simple C program that we can use for debugging:

```bash
cat > ~/project/example.c << EOF
#include <stdio.h>
#include <unistd.h>

int main() {
    printf("Hello, World!\n");
    sleep(5);
    return 0;
}
EOF
```

Now, let's compile the program and run it with strace:

```bash
gcc -o ~/project/example ~/project/example.c
strace ~/project/example
```

Example output:

```
execve("/home/labex/project/example", ["/home/labex/project/example"], 0x7ffee4f7a0f0 /* 23 vars */) = 0
brk(NULL)                               = 0x55b7d6c23000
access("/etc/ld.so.preload", R_OK)      = -1 ENOENT (No such file or directory)
openat(AT_FDCWD, "/etc/ld.so.cache", O_RDONLY|O_CLOEXEC) = 3
...
write(1, "Hello, World!\n", 14)         = 14
time(NULL)                              = 1618304400
sleep(5)                                = 5
exit_group(0)                           = ?
+++ exited with 0 +++
```

The output shows the sequence of system calls made by the C program, including `execve` to execute the program, `write` to output the "Hello, World!" message, and `sleep` to pause the program for 5 seconds.

Now, let's say we want to debug a problem with the program. We can use strace to identify the issue. For example, let's assume the program is not writing the expected output to a file. We can trace the file-related system calls to see what's happening:

```bash
strace -e trace=file ~/project/example
```

Example output:

```
execve("/home/labex/project/example", ["/home/labex/project/example"], 0x7ffee4f7a0f0 /* 23 vars */) = 0
write(1, "Hello, World!\n", 14)         = 14
time(NULL)                              = 1618304400
sleep(5)                                = 5
exit_group(0)                           = ?
+++ exited with 0 +++
```

The output shows that the program is not making any file-related system calls, which suggests that the issue is not related to file operations.

By using strace to trace specific system calls or the overall system call activity, you can often identify the root cause of issues in your programs and debug them more effectively.
