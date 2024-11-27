# Create a Simple C++ Project with CMake

In this step, we will create a simple C++ project and use CMake to build it.

First, let's create a new directory for our project:

```bash
cd ~/project
mkdir cpp-project && cd cpp-project
```

Next, create a new C++ file named `main.cpp` with the following content:

```cpp
#include <iostream>

int main() {
    std::cout << "Hello, CMake!" << std::endl;
    return 0;
}
```

Now, we need to create a `CMakeLists.txt` file in the same directory to define our project's build process. Add the following content to the file:

```cmake
cmake_minimum_required(VERSION 3.22)
project(cpp-project)

add_executable(cpp-project main.cpp)
```

This CMake file sets the minimum required CMake version, defines the project name, and adds an executable target named `cpp-project` that will be built from the `main.cpp` file.

To build the project, run the following commands:

```bash
cmake -S . -B build
cmake --build build
```

The first command generates the build files in the `build` directory, and the second command actually builds the project.

Example output:

```
-- The C compiler identification is GNU 11.2.0
-- The CXX compiler identification is GNU 11.2.0
-- Detecting C compiler ABI info
-- Detecting C compiler ABI info - done
-- Check for working C compiler: /usr/bin/cc - skipped
-- Detecting C compile features
-- Detecting C compile features - done
-- Detecting CXX compiler ABI info
-- Detecting CXX compiler ABI info - done
-- Check for working CXX compiler: /usr/bin/c++ - skipped
-- Detecting CXX compile features
-- Detecting CXX compile features - done
-- Configuring done
-- Generating done
-- Build files have been written to: /home/labex/project/cpp-project/build
Scanning dependencies of target cpp-project
[ 50%] Building CXX object CMakeFiles/cpp-project.dir/main.cpp.o
[100%] Linking CXX executable cpp-project
[100%] Built target cpp-project
```

Finally, run the built executable:

```bash
./build/cpp-project
```

Example output:

```
Hello, CMake!
```

Congratulations! You have successfully created a simple C++ project and built it using CMake.
