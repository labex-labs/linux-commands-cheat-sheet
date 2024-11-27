# Explore Compiler Flags and Optimization Options

In this step, you will learn about various compiler flags and optimization options that can be used with the `cc` command.

Compiler flags are used to control the behavior of the compiler during the compilation process. Some common compiler flags include:

- `-g`: Includes debugging information in the compiled output, which is useful for debugging your program.
- `-Wall`: Enables all warning messages, which can help you identify potential issues in your code.
- `-Werror`: Treats all warnings as errors, causing the compilation to fail if any warnings are generated.

Optimization options are used to optimize the performance of your compiled program. The `cc` command supports several optimization levels, which are specified using the `-O` flag followed by a number:

- `-O0`: No optimization (default)
- `-O1`: Optimize for speed, without increasing code size
- `-O2`: Optimize further, potentially increasing code size
- `-O3`: Optimize even further, potentially increasing code size even more

For example, let's compile the `hello.c` program with some compiler flags and optimization options:

```
cd ~/project
cc -g -Wall -O2 -o hello hello.c
```

This will compile the `hello.c` program with debugging information, all warnings enabled, and optimization level 2.

You can then run the compiled program as before:

```
./hello
```

Example output:

```
Hello, World!
```
