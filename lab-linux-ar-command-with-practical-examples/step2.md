# Creating Static Libraries with ar

In this step, we will learn how to create static libraries using the `ar` command.

First, let's create a simple C file that we will use to build the static library:

```bash
cd ~/project
nano hello.c
```

Add the following content to the `hello.c` file:

```c
#include <stdio.h>

void sayHello() {
    printf("Hello, from the static library!\n");
}
```

Next, we will compile the `hello.c` file into an object file:

```bash
gcc -c hello.c
```

This will create the `hello.o` object file.

Now, we can use the `ar` command to create a static library from the object file:

```bash
sudo ar rcs libhello.a hello.o
```

The `r` option replaces or inserts files into the archive, `c` creates the archive if it doesn't exist, and `s` updates the archive symbol table.

You can list the contents of the static library using the `t` option:

```bash
sudo ar t libhello.a
```

Example output:

```
hello.o
```

The static library `libhello.a` has been created and now contains the `hello.o` object file.
