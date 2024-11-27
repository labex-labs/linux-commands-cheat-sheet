# Manage C++ Code with the Linux File System

In this step, you will learn how to manage your C++ code using the Linux file system. We will explore various file operations, such as creating, moving, and deleting files and directories, which are essential for organizing and maintaining your C++ projects.

Let's start by creating a new directory for your C++ project:

```bash
cd ~/project
mkdir cpp-project
cd cpp-project
```

Now, let's create a new C++ file named `main.cpp` in the `cpp-project` directory:

```bash
nano main.cpp
```

In the `main.cpp` file, add the following code:

```cpp
#include <iostream>

int main() {
    std::cout << "Hello, C++ on Linux!" << std::endl;
    return 0;
}
```

Save the file and exit the nano editor.

Next, let's compile the `main.cpp` file using the `g++` compiler:

```bash
g++ -o app main.cpp
```

This command compiles the `main.cpp` file and generates an executable named `app`.

Example output:

```

```

Now, let's run the compiled program:

```bash
./app
```

This will execute the `app` program and output the message "Hello, C++ on Linux!".

Example output:

```
Hello, C++ on Linux!
```

To demonstrate file management, let's create a new directory for our project's source files:

```bash
mkdir src
mv main.cpp src/
```

This creates a new `src` directory and moves the `main.cpp` file into it.

Let's also create a new directory for our project's build artifacts:

```bash
mkdir build
mv app build/
```

This creates a new `build` directory and moves the `app` executable into it.

Finally, let's delete the `build` directory and its contents:

```bash
rm -rf build
```

This command removes the `build` directory and all its contents.

In this step, you learned how to:

- Create and navigate directories in the Linux file system
- Create, move, and delete C++ source files
- Compile C++ code and manage the generated executable files
- Organize your C++ project structure using directories
