# Understand the Purpose of ranlib Command

In this step, we will explore the purpose of the `ranlib` command in Linux. The `ranlib` command is used to generate an index to the contents of an archive file, which is typically a static library file.

Static libraries are collections of object files that can be linked into programs. The `ranlib` command is used to create or update the symbol table in the archive file, which is used by the linker to quickly access the symbols defined in the library.

Let's start by creating a simple C program that uses a static library:

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
// mylib.c
int myfunction() {
    return 42;
}
```

```c
// mylib.h
int myfunction();
```

Now, let's compile the `mylib.c` file into an object file and then create a static library from it:

```bash
gcc -c mylib.c
ar rcs libmylib.a mylib.o
```

Example output:

```

```

The `ar` command is used to create the static library file `libmylib.a` from the `mylib.o` object file.

Next, we need to use the `ranlib` command to generate an index to the contents of the static library:

```bash
ranlib libmylib.a
```

Example output:

```

```

The `ranlib` command updates the symbol table in the static library, which makes it easier for the linker to access the symbols defined in the library.

Now, we can compile the `main.c` file and link it against the static library:

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
