# Understand the Basics of GCC Compiler

In this step, you will learn the basics of the GCC (GNU Compiler Collection) compiler, which is a widely used compiler for C, C++, and other programming languages on Linux systems.

First, let's check the version of GCC installed in the environment:

```bash
gcc --version
```

Example output:

```
gcc (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0
Copyright (C) 2021 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
```

The GCC compiler is a crucial tool for compiling and building C and C++ programs on Linux. It provides various options and flags to control the compilation process, optimize the generated code, and handle different aspects of the build process.

Some of the common GCC command-line options include:

- `-c`: Compile and assemble, but do not link
- `-o <output>`: Specify the output file name
- `-g`: Generate debugging information
- `-Wall`: Enable all warning messages
- `-Werror`: Treat all warnings as errors
- `-O<n>`: Optimization level, where `n` is 0, 1, 2, 3, or `s`

To understand these options better, we'll explore them in the following steps.
