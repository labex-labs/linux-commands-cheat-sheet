# Understand CMake Build Configurations

In this step, we will explore the different build configurations available in CMake and how to use them.

CMake supports several build configurations, such as `Debug`, `Release`, `RelWithDebInfo`, and `MinSizeRel`. These configurations determine the optimization and debugging settings used during the build process.

Let's start by creating a new C++ project:

```bash
cd ~/project
mkdir cmake-configurations && cd cmake-configurations
```

Now, create a `main.cpp` file with the following content:

```cpp
#include <iostream>

int main() {
    std::cout << "Build Configuration: " << CMAKE_BUILD_TYPE << std::endl;
    return 0;
}
```

Next, create a `CMakeLists.txt` file with the following content:

```cmake
cmake_minimum_required(VERSION 3.22)
project(cmake-configurations)

add_executable(cmake-configurations main.cpp)
```

To build the project with the default `Debug` configuration, run the following commands:

```bash
cmake -S . -B build
cmake --build build
```

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
-- Build files have been written to: /home/labex/project/cmake-configurations/build
Scanning dependencies of target cmake-configurations
[ 50%] Building CXX object CMakeFiles/cmake-configurations.dir/main.cpp.o
[100%] Linking CXX executable cmake-configurations
[100%] Built target cmake-configurations
```

Run the built executable:

```bash
./build/cmake-configurations
```

Example output:

```
Build Configuration: Debug
```

Now, let's build the project with the `Release` configuration:

```bash
cmake -S . -B build -DCMAKE_BUILD_TYPE=Release
cmake --build build
```

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
-- Build files have been written to: /home/labex/project/cmake-configurations/build
Scanning dependencies of target cmake-configurations
[ 50%] Building CXX object CMakeFiles/cmake-configurations.dir/main.cpp.o
[100%] Linking CXX executable cmake-configurations
[100%] Built target cmake-configurations
```

Run the built executable:

```bash
./build/cmake-configurations
```

Example output:

```
Build Configuration: Release
```

As you can see, the build configuration is reflected in the output of the executable. The `Debug` configuration is used by default, but you can specify a different configuration using the `-DCMAKE_BUILD_TYPE` option when running `cmake`.
