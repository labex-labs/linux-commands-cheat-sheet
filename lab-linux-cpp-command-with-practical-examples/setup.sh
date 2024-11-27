#!/bin/bash

# Create project directory
mkdir -p ~/project/cpp-project

# Create C++ source files
cat > ~/project/cpp-project/main.cpp << EOF
#include "utils.h"
int main() {
    printMessage();
    return 0;
}
EOF

cat > ~/project/cpp-project/utils.cpp << EOF
#include "utils.h"
void printMessage() {
    std::cout << "This is a utility function." << std::endl;
}
EOF

cat > ~/project/cpp-project/utils.h << EOF
#ifndef UTILS_H
#define UTILS_H
#include <iostream>
void printMessage();
#endif
EOF

# Compile the C++ program
g++ -o hello ~/project/cpp-project/main.cpp ~/project/cpp-project/utils.cpp