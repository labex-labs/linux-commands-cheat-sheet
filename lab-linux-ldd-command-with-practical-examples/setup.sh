#!/bin/bash

# Create the necessary directory structure
mkdir -p ~/project/hello

# Change to the project directory
cd ~/project/hello

# Create the hello.c file
cat << EOF > hello.c
#include <stdio.h>
#include <mylib.h>

int main() {
    print_message();
    return 0;
}
EOF

# Compile the hello program
gcc -o hello hello.c -L. -lmylib

# Use ldd to check the dynamic dependencies
ldd hello