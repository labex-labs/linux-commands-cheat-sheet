#!/bin/bash

# Create project directory if it doesn't exist
if [ ! -d ~/project ]; then
    mkdir ~/project
fi

# Change to project directory
cd ~/project

# Create hello.c file
cat << EOF > hello.c
#include <stdio.h>

int main() {
    printf("Hello, World!\n");
    return 0;
}
EOF

# Create Makefile
cat << EOF > Makefile
all: hello

hello: hello.c
    gcc -o hello hello.c
EOF

# Set permissions
chmod +x Makefile