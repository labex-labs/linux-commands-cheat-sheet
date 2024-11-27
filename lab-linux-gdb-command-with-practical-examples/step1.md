# Introduction to gdb and Its Usage

In this step, we will introduce the GNU Debugger (gdb) and explore its usage for debugging C programs. gdb is a powerful tool that allows you to inspect the state of a running program, set breakpoints, and step through the code to identify and fix issues.

First, let's ensure that gdb is installed in our Ubuntu 22.04 Docker container:

```bash
sudo apt-get update
sudo apt-get install -y gdb
```

Example output:

```
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following additional packages will be installed:
  libasan6 libubsan1 python3-gdb
Suggested packages:
  gdb-multiarch
The following NEW packages will be installed:
  gdb libasan6 libubsan1 python3-gdb
0 upgraded, 4 newly installed, 0 to remove and 0 not upgraded.
Need to get 3,470 kB of archives.
After this operation, 13.5 MB of additional disk space will be used.
Do you want to continue? [Y/n] Y
```

Now, let's create a simple C program to debug. Create a file named `example.c` in the `~/project` directory with the following content:

```c
#include <stdio.h>

int main() {
    int a = 5;
    int b = 0;
    int c = a / b;
    printf("The result is: %d\n", c);
    return 0;
}
```

This program will intentionally divide by zero, causing a runtime error.

To debug this program using gdb, follow these steps:

1. Compile the program with the `-g` flag to include debugging symbols:

```bash
gcc -g -o example example.c
```

2. Start the gdb debugger and load the compiled program:

```bash
gdb ./example
```

3. In the gdb prompt, set a breakpoint at the `main` function:

```
(gdb) break main
Breakpoint 1 at 0x11a6: file example.c, line 4.
```

4. Run the program:

```
(gdb) run
Starting program: /home/labex/project/example
```

5. When the program hits the breakpoint, you can inspect variables, step through the code, and debug the issue:

```
Breakpoint 1, main () at example.c:4
4       int a = 5;
(gdb) print a
$1 = 5
(gdb) next
5       int b = 0;
(gdb) print b
$2 = 0
(gdb) next
6       int c = a / b;
```

As you can see, when the program attempts to divide by zero, it will trigger a runtime error that can be caught and debugged using gdb.
