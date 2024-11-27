# Execute External Commands with exec()

In this step, we will explore how to execute external commands using the `exec` system call.

The `exec` system call can be used to execute external commands or programs from within a C program. Let's start by creating a simple C program that demonstrates this:

```c
#include <stdio.h>
#include <unistd.h>

int main() {
    printf("Executing 'ls -l' command using exec:\n");
    execl("/bin/ls", "ls", "-l", NULL);
    printf("This line should not be printed.\n");
    return 0;
}
```

Save this code in a file named `exec_command.c`.

Now, let's compile and run the program:

```bash
gcc -o exec_command exec_command.c
./exec_command
```

Example output:

```
Executing 'ls -l' command using exec:
total 12
-rwxrwxr-x 1 labex labex 8704 May 30 11:32 exec_command
-rw-rw-r-- 1 labex labex  241 May 30 11:32 exec_command.c
-rw-rw-r-- 1 labex labex   70 May 30 11:32 exec_example.c
```

As you can see, the `exec` system call replaces the current process with the new process, in this case, the `ls -l` command. The "This line should not be printed." statement is never executed because the original program is terminated by the `exec` call.

You can also execute different external commands using the `exec` system call. For example, to execute the `echo` command:

```c
#include <stdio.h>
#include <unistd.h>

int main() {
    printf("Executing 'echo Hello, World!' using exec:\n");
    execl("/bin/echo", "echo", "Hello, World!", NULL);
    printf("This line should not be printed.\n");
    return 0;
}
```

Save this code in a file named `exec_echo.c`, compile and run it:

```bash
gcc -o exec_echo exec_echo.c
./exec_echo
```

Example output:

```
Executing 'echo Hello, World!' using exec:
Hello, World!
```

The `exec` system call provides a powerful way to execute external commands from within a C program, allowing you to integrate system-level functionality into your applications.
