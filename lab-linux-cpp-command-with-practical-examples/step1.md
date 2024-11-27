# Compile and Run C++ Programs in Linux

In this step, you will learn how to compile and run C++ programs in a Linux environment. We will start by creating a simple C++ program, then use the `g++` compiler to build the executable, and finally run the program.

First, let's create a new C++ file named `hello.cpp` in the `~/project` directory:

```bash
cd ~/project
nano hello.cpp
```

In the nano editor, add the following C++ code:

```cpp
#include <iostream>

int main() {
    std::cout << "Hello, World!" << std::endl;
    return 0;
}
```

Save the file and exit the nano editor.

Next, we will use the `g++` compiler to build the executable from the `hello.cpp` file:

```bash
g++ -o hello hello.cpp
```

This command compiles the `hello.cpp` file and generates an executable named `hello`.

Example output:

```

```

Now, let's run the compiled program:

```bash
./hello
```

This will execute the `hello` program and output the message "Hello, World!".

Example output:

```
Hello, World!
```

Congratulations! You have successfully compiled and run a C++ program in a Linux environment.
