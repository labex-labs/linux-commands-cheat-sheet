#!/bin/bash

# Create the project directory if it doesn't exist
if [ ! -d ~/project ]; then
    mkdir ~/project
fi

# Change to the project directory
cd ~/project

# Create the necessary files and directories
mkdir -p mylib
touch mylib/mylib.c mylib/mylib.h main.c

# Write the C code to the files
cat << EOF > mylib/mylib.c
int myfunction() {
    return 42;
}
EOF

cat << EOF > mylib/mylib.h
int myfunction();
EOF

cat << EOF > main.c
#include <stdio.h>
#include "mylib.h"

int main() {
    printf("The answer is: %d\n", myfunction());
    return 0;
}
EOF

# Compile the mylib.c file into an object file
gcc -c mylib/mylib.c

# Create the static library from the object file
ar rcs libmylib.a mylib.o

# Use ranlib to generate an index to the contents of the static library
ranlib libmylib.a

# Compile the main.c file and link it against the static library
gcc -c main.c
gcc -o main main.o -L. -lmylib