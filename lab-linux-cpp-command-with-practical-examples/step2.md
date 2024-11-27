# Utilize the g++ Compiler for C++ Development

In this step, you will learn how to utilize the `g++` compiler for more advanced C++ development tasks, such as compiling multiple source files, using compiler flags, and managing C++ project structures.

Let's start by creating a simple C++ project with multiple source files. First, create a new directory for the project:

```bash
cd ~/project
mkdir cpp-project
cd cpp-project
```

Now, create two C++ source files, `main.cpp` and `utils.cpp`, in the `cpp-project` directory:

```bash
nano main.cpp
```

In the `main.cpp` file, add the following code:

```cpp
#include "utils.h"
int main() {
    printMessage();
    return 0;
}
```

Next, create the `utils.cpp` file:

```bash
nano utils.cpp
```

In the `utils.cpp` file, add the following code:

```cpp
#include "utils.h"
void printMessage() {
    std::cout << "This is a utility function." << std::endl;
}
```

Finally, create the `utils.h` header file:

```bash
nano utils.h
```

In the `utils.h` file, add the following code:

```cpp
#ifndef UTILS_H
#define UTILS_H
#include <iostream>
void printMessage();
#endif
```

Now, let's compile the project using the `g++` compiler:

```bash
g++ -o app main.cpp utils.cpp
```

This command compiles the `main.cpp` and `utils.cpp` files and generates an executable named `app`.

Example output:

```

```

To run the compiled program, use the following command:

```bash
./app
```

This will execute the `app` program and output the message "This is a utility function."

Example output:

```
This is a utility function.
```

In this step, you learned how to:

- Create a simple C++ project with multiple source files
- Use the `g++` compiler to compile the project
- Run the compiled C++ program
