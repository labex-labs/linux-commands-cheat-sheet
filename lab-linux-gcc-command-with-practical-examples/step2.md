# Compile a Simple C Program with GCC

In this step, you will learn how to compile a simple C program using the GCC compiler.

First, let's create a new directory for our project and navigate to it:

```bash
mkdir ~/project/simple-c-program
cd ~/project/simple-c-program
```

Now, create a new file named `hello.c` with the following content:

```c
#include <stdio.h>

int main() {
    printf("Hello, World!\n");
    return 0;
}
```

This is a simple C program that prints "Hello, World!" to the console.

To compile this program using GCC, run the following command:

```bash
gcc -o hello hello.c
```

This command will compile the `hello.c` file and generate an executable file named `hello`.

You can now run the compiled program:

```bash
./hello
```

Example output:

```
Hello, World!
```

The `gcc` command used above has the following options:

- `-o hello`: Specifies the output file name as `hello`
- `hello.c`: The input C source file to be compiled

GCC provides many other options to control the compilation process, which we will explore in the next step.
