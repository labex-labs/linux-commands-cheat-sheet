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

void sayHello() {
    printf("Hello, from the static library!\n");
}
EOF

# Compile the hello.c file into an object file
gcc -c hello.c

# Create the static library from the object file
sudo ar rcs libhello.a hello.o

# List the contents of the static library
sudo ar t libhello.a