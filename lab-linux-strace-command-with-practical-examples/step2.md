# Tracing System Calls with strace

In this step, we will dive deeper into using the strace command to trace system calls made by a running process.

Let's start by creating a simple Python script that we can use for tracing:

```bash
cat > ~/project/example.py << EOF
import time

print("Hello, World!")
time.sleep(5)
EOF
```

Now, let's trace the execution of this script using strace:

```bash
strace python ~/project/example.py
```

Example output:

```
execve("/usr/bin/python", ["python", "/home/labex/project/example.py"], 0x7ffee4f7a0f0 /* 23 vars */) = 0
brk(NULL)                               = 0x55b7d6c23000
access("/etc/ld.so.preload", R_OK)      = -1 ENOENT (No such file or directory)
openat(AT_FDCWD, "/etc/ld.so.cache", O_RDONLY|O_CLOEXEC) = 3
...
write(1, "Hello, World!\n", 14)         = 14
time(NULL)                              = 1618304400
nanosleep({5, 0}, NULL)                 = 0
exit_group(0)                           = ?
+++ exited with 0 +++
```

The output shows the sequence of system calls made by the Python script, including `execve` to execute the Python interpreter, `write` to output the "Hello, World!" message, `time` to get the current time, and `nanosleep` to pause the script for 5 seconds.

You can use the strace output to understand how your program interacts with the operating system and identify any potential issues or performance bottlenecks.

Let's try another example, this time tracing the execution of the `ls` command with some additional options:

```bash
strace -c ls -l ~/project
```

Example output:

```
total 4
-rw-r--r-- 1 labex labex 59 Apr 12 13:33 example.py
% time     seconds  usecs/call     calls    errors syscall
------ ----------- ----------- --------- --------- ----------------
 45.45    0.000005           5         1           execve
 27.27    0.000003           3         1           brk
  9.09    0.000001           1         1           access
  9.09    0.000001           1         1           openat
  9.09    0.000001           1         1           close
  0.00    0.000000           0         4           read
  0.00    0.000000           0         2           fstat
  0.00    0.000000           0         1           mmap
  0.00    0.000000           0         1           mprotect
  0.00    0.000000           0         1           munmap
  0.00    0.000000           0         2           ioctl
  0.00    0.000000           0         1           statfs
  0.00    0.000000           0         1           access
  0.00    0.000000           0         2           newfstatat
  0.00    0.000000           0         2           close
------ ----------- ----------- --------- --------- ----------------
100.00    0.000011                    22           total
```

In this example, we used the `-c` option to get a summary of the system calls made by the `ls` command. The output shows the percentage of time spent in each system call, the number of calls, and the number of errors.

This information can be useful for identifying performance bottlenecks or understanding the behavior of a program.
