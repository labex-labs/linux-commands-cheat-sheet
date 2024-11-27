# Debugging a Simple C Program with gdb

In this step, we will use gdb to debug a simple C program that has a runtime error.

First, let's create a new C file named `simple.c` in the `~/project` directory with the following content:

```c
#include <stdio.h>

int main() {
    int x = 10;
    int y = 0;
    int z = x / y;
    printf("The result is: %d\n", z);
    return 0;
}
```

This program will intentionally divide by zero, causing a runtime error.

Now, let's compile the program with the `-g` flag to include debugging symbols:

```bash
gcc -g -o simple simple.c
```

Next, start the gdb debugger and load the compiled program:

```bash
gdb ./simple
```

In the gdb prompt, set a breakpoint at the `main` function:

```
(gdb) break main
Breakpoint 1 at 0x11a6: file simple.c, line 4.
```

Now, run the program:

```
(gdb) run
Starting program: /home/labex/project/simple
```

When the program hits the breakpoint, you can inspect variables, step through the code, and debug the issue:

```
Breakpoint 1, main () at simple.c:4
4       int x = 10;
(gdb) print x
$1 = 10
(gdb) next
5       int y = 0;
(gdb) print y
$2 = 0
(gdb) next
6       int z = x / y;
```

As you can see, when the program attempts to divide by zero, it will trigger a runtime error that can be caught and debugged using gdb.
