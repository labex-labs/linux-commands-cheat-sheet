# Resolve Addresses to Function Names and Source File Locations

In this final step, you will learn how to use the `addr2line` command to resolve addresses to function names and source file locations. This is particularly useful when working with debugging information, such as stack traces or core dumps.

Let's start by creating a simple C program that we can use for this example:

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

Now, compile the program with debugging symbols:

```bash
gcc -g -o hello hello.c
```

Next, let's get the address of the `main` function:

```bash
addr2line -e hello -f 0x4004e0
```

Example output:

```
main
/home/labex/project/hello.c:3
```

The output shows that the address `0x4004e0` corresponds to the `main` function in the `hello.c` file, at line 3.

You can also use the `addr2line` command to resolve multiple addresses at once:

```bash
addr2line -e hello 0x4004e0 0x4004f0
```

Example output:

```
main
/home/labex/project/hello.c:3
printf
/usr/include/x86_64-linux-gnu/bits/stdio2.h:92
```

In this case, the address `0x4004f0` corresponds to the `printf` function, which is called from the `main` function.

By using the `addr2line` command, you can quickly identify the source code locations associated with specific addresses, which can be invaluable when debugging issues in your programs.
