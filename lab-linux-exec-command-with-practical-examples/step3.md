# Redirect Input and Output with exec()

In this step, we will learn how to redirect the input and output of a command executed using the `exec` system call.

Let's start by creating a C program that reads input from the user and executes the `cat` command with the input:

```c
#include <stdio.h>
#include <unistd.h>

int main() {
    printf("Enter some text: ");

    // Redirect stdin to the user's input
    dup2(STDIN_FILENO, 0);

    // Execute the 'cat' command to display the input
    execl("/bin/cat", "cat", NULL);

    printf("This line should not be printed.\n");
    return 0;
}
```

Save this code in a file named `exec_redirect_input.c`.

Now, let's compile and run the program:

```bash
gcc -o exec_redirect_input exec_redirect_input.c
./exec_redirect_input
```

Example output:

```
Enter some text: Hello, World!
Hello, World!
```

In this example, we use the `dup2` function to redirect the standard input (stdin) to the user's input. Then, we execute the `cat` command, which will read from the redirected stdin and display the input.

Next, let's create a program that redirects the output of a command executed with `exec`:

```c
#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>

int main() {
    // Redirect stdout to a file
    int fd = open("output.txt", O_WRONLY | O_CREAT | O_TRUNC, 0644);
    dup2(fd, STDOUT_FILENO);
    close(fd);

    // Execute the 'ls -l' command with the redirected output
    execl("/bin/ls", "ls", "-l", NULL);

    printf("This line should not be printed.\n");
    return 0;
}
```

Save this code in a file named `exec_redirect_output.c`.

Compile and run the program:

```bash
gcc -o exec_redirect_output exec_redirect_output.c
./exec_redirect_output
```

After running the program, you should find a file named `output.txt` in the current directory, containing the output of the `ls -l` command.

The `dup2` function is used to redirect the standard output (stdout) to the file `output.txt`. The `open` function is used to create the file with the appropriate permissions.

By combining input and output redirection with the `exec` system call, you can create powerful C programs that integrate system-level functionality with custom logic.
