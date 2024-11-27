# Introduction to the nm Command

In this step, we will explore the Linux `nm` command, which is used to display the symbol information for object files. The `nm` command is a useful tool for developers and system administrators to understand the internal structure of executable files.

First, let's create a simple C program and compile it into an executable file:

```bash
cd ~/project
nano hello.c
```

Add the following code to the `hello.c` file:

```c
#include <stdio.h>

int main() {
    printf("Hello, World!\n");
    return 0;
}
```

Now, compile the program:

```bash
gcc -o hello hello.c
```

To view the symbol information of the `hello` executable, we can use the `nm` command:

```bash
nm hello
```

Example output:

```
0000000000001119 T main
                 U printf
```

The output shows that the executable file `hello` has a symbol named `main` at the address `0x0000000000001119`, and it also references the `printf` symbol, which is likely provided by the C standard library.

The `nm` command provides various options to customize the output and filter the symbol information. We will explore these options in the next step.
