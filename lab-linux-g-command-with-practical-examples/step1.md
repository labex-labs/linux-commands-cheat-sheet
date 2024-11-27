# Understand the Basics of g++ Command

In this step, we will learn the basics of the g++ command, which is the GNU C++ compiler. The g++ command is used to compile C++ source code into an executable program.

First, let's check the version of g++ installed in our Ubuntu 22.04 Docker container:

```bash
g++ --version
```

Example output:

```
g++ (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0
Copyright (C) 2021 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
```

The g++ command has several important options that you can use to control the compilation process. Some of the commonly used options are:

- `-c`: Compile or assemble the source files, but do not link.
- `-o <output>`: Name the output file.
- `-g`: Produce debugging information in the output file.
- `-Wall`: Enable all warning messages.
- `-Wextra`: Enable extra warning messages.
- `-std=c++11` (or `c++14`, `c++17`, etc.): Specify the C++ standard to use.
- `-O0`, `-O1`, `-O2`, `-O3`: Set the optimization level.

Now, let's try compiling a simple C++ program using the g++ command:

```bash
cd ~/project
nano hello.cpp
```

Add the following code to the `hello.cpp` file:

```cpp
#include <iostream>

int main() {
    std::cout << "Hello, World!" << std::endl;
    return 0;
}
```

Save the file and exit the text editor. Now, let's compile the program:

```bash
g++ -o hello hello.cpp
```

This will create an executable file named `hello` in the current directory. You can run the program like this:

```bash
./hello
```

Example output:

```
Hello, World!
```
