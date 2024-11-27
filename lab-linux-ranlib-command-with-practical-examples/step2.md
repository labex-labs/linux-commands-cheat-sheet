# Create a Static Library and Use ranlib

In this step, we will create a simple static library and use the `ranlib` command to update its symbol table.

First, let's create a new directory for our project and navigate to it:

```bash
mkdir ~/project/static-library
cd ~/project/static-library
```

Now, let's create a new C file called `mylib.c` with a simple function:

```c
// mylib.c
int myfunction() {
    return 42;
}
```

Next, we'll compile the `mylib.c` file into an object file:

```bash
gcc -c mylib.c
```

Example output:

```

```

Now, we can create a static library from the `mylib.o` object file using the `ar` command:

```bash
ar rcs libmylib.a mylib.o
```

Example output:

```

```

The `ar` command creates the static library file `libmylib.a` from the `mylib.o` object file.

To update the symbol table in the static library, we need to use the `ranlib` command:

```bash
ranlib libmylib.a
```

Example output:

```

```

The `ranlib` command generates an index to the contents of the static library, which makes it easier for the linker to access the symbols defined in the library.

Now, let's create a simple program that uses the `myfunction()` from the static library:

```c
// main.c
#include <stdio.h>
#include "mylib.h"

int main() {
    printf("The answer is: %d\n", myfunction());
    return 0;
}
```

```c
// mylib.h
int myfunction();
```

We can compile the `main.c` file and link it against the static library:

```bash
gcc -c main.c
gcc -o main main.o -L. -lmylib
```

Example output:

```

```

The `-L.` option tells the linker to search for the library in the current directory, and the `-lmylib` option tells the linker to link against the `libmylib.a` library.

When you run the `main` program, you should see the following output:

```
The answer is: 42
```
