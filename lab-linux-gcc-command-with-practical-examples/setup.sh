#!/bin/bash

# Create project directory
mkdir -p ~/project/simple-c-program

# Navigate to project directory
cd ~/project/simple-c-program

# Create hello.c file
cat << EOF > hello.c
#include <stdio.h>

int main() {
    printf("Hello, World!\n");
    return 0;
}
EOF

# Compile the C program using GCC
gcc -o hello hello.c