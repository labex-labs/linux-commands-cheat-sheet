# Create a Simple Makefile and Compile a C Program

In this step, you will learn how to create a simple Makefile and use it to compile a C program.

First, let's create a new C file called `hello.c` in the `~/project` directory:

```
nano ~/project/hello.c
```

Add the following content to the file:

```c
#include <stdio.h>

int main() {
    printf("Hello, World!\n");
    return 0;
}
```

Save and exit the editor.

Now, let's create a simple Makefile in the `~/project` directory:

```
nano ~/project/Makefile
```

Add the following content to the Makefile:

```makefile
all: hello

hello: hello.c
    gcc -o hello hello.c
```

This Makefile defines a target called `hello` that depends on the `hello.c` file. The `gcc` command is used to compile the `hello.c` file and create the `hello` executable.

To compile the program using the Makefile, run the following command in the `~/project` directory:

```
make
```

Example output:

```
gcc -o hello hello.c
```

The `make` command has compiled the `hello.c` file and created the `hello` executable.

You can now run the `hello` program:

```
./hello
```

Example output:

```
Hello, World!
```

The `make` command has successfully compiled the C program using the Makefile.
