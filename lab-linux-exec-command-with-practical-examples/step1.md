# Understand the exec System Call

In this step, we will explore the `exec` system call in Linux. The `exec` system call is used to execute a program or command in the current process, replacing the current process image with a new process image.

To understand the `exec` system call, let's start by creating a simple C program that demonstrates its usage:

```c
#include <stdio.h>
#include <unistd.h>

int main() {
    printf("Before exec\n");
    execl("/bin/ls", "ls", "-l", NULL);
    printf("After exec\n");
    return 0;
}
```

Save this code in a file named `exec_example.c`.

Now, let's compile and run the program:

```bash
gcc -o exec_example exec_example.c
./exec_example
```

Example output:

```
Before exec
total 4
-rwxrwxr-x 1 labex labex 8704 May 30 11:32 exec_example
```

As you can see, the output only shows the `ls -l` command output, and the "After exec" line is not printed. This is because the `exec` system call replaces the current process image with the new process image, effectively terminating the original program.

The `exec` system call takes the path to the executable file and the arguments to be passed to the new process. In the example above, we used `execl` to execute the `/bin/ls` command with the `-l` argument.

There are several variants of the `exec` system call, such as `execvp`, `execve`, and `execvpe`, which provide different ways to specify the executable and its arguments.
