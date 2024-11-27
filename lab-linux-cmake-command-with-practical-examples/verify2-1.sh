#!/bin/bash
if [ ! -d ~/project/cpp-project ]; then
    echo "The cpp-project directory does not exist."
    exit 1
fi

if [ ! -f ~/project/cpp-project/main.cpp ]; then
    echo "The main.cpp file does not exist."
    exit 1
fi

if [ ! -f ~/project/cpp-project/CMakeLists.txt ]; then
    echo "The CMakeLists.txt file does not exist."
    exit 1
fi

if ! grep -q "Hello, CMake!" ~/project/cpp-project/build/cpp-project; then
    echo "The cpp-project executable does not output 'Hello, CMake!'"
    exit 1
fi

echo "C++ project created and built successfully."
exit 0