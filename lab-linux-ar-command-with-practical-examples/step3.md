# Extracting and Listing Contents of Static Libraries

In this step, we will learn how to extract and list the contents of static libraries using the `ar` command.

First, let's create a simple program that uses the static library we created in the previous step:

```bash
cd ~/project
nano main.c
```

Add the following content to the `main.c` file:

```c
#include <stdio.h>

extern void sayHello();

int main() {
    sayHello();
    return 0;
}
```

Now, let's compile the `main.c` file and link it with the `libhello.a` static library:

```bash
gcc -o main main.c -L. -lhello
```

The `-L.` option tells the compiler to look for libraries in the current directory, and `-lhello` links the `libhello.a` library.

You can run the compiled program to see the output:

```bash
./main
```

Example output:

```
Hello, from the static library!
```

To list the contents of the `libhello.a` static library, you can use the `t` option:

```bash
sudo ar t libhello.a
```

Example output:

```
hello.o
```

To extract the contents of the static library, you can use the `x` option:

```bash
sudo ar x libhello.a
```

This will extract the `hello.o` object file from the `libhello.a` static library.
