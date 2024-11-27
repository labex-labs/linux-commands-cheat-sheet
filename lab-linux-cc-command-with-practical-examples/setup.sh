#!/bin/bash

# Create the project directory if it doesn't exist
if [ ! -d ~/project ]; then
  mkdir ~/project
fi

# Change to the project directory
cd ~/project

# Create the hello.c file
cat << EOF > hello.c
#include <stdio.h>

int main() {
    printf("Hello, World!\n");
    return 0;
}
EOF

# Compile the hello.c program using the cc command
cc -o hello hello.c