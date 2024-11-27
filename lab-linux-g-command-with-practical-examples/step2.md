# Compile a Simple C++ Program with g++

In this step, we will learn how to compile a simple C++ program using the g++ command.

First, let's create a new C++ file in the `~/project` directory:

```bash
cd ~/project
nano simple.cpp
```

Add the following code to the `simple.cpp` file:

```cpp
#include <iostream>

int main() {
    int a = 10, b = 20;
    std::cout << "a + b = " << a + b << std::endl;
    return 0;
}
```

Save the file and exit the text editor.

Now, let's compile the program using the g++ command:

```bash
g++ -o simple simple.cpp
```

This will create an executable file named `simple` in the current directory. You can run the program like this:

```bash
./simple
```

Example output:

```
a + b = 30
```

The `-o` option specifies the name of the output file. If you don't use this option, g++ will create an executable file named `a.out` by default.

You can also add additional compiler flags to control the compilation process. For example, the `-g` flag will include debugging information in the compiled binary, which can be useful for troubleshooting:

```bash
g++ -g -o simple simple.cpp
```

And the `-Wall` and `-Wextra` flags will enable additional warning messages, which can help you identify potential issues in your code:

```bash
g++ -Wall -Wextra -o simple simple.cpp
```
