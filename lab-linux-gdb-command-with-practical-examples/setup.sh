#!/bin/bash

# Update package lists
sudo apt-get update

# Install gdb
sudo apt-get install -y gdb

# Create project directory
mkdir -p ~/project

# Create example.c file
cat << EOF > ~/project/example.c
#include <stdio.h>

int main() {
    int a = 5;
    int b = 0;
    int c = a / b;
    printf("The result is: %d\n", c);
    return 0;
}
EOF

# Compile the program with debugging symbols
gcc -g -o ~/project/example ~/project/example.c