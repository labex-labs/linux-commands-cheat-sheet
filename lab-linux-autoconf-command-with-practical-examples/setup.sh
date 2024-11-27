#!/bin/bash

# Install autoconf package
sudo apt-get update
sudo apt-get install -y autoconf

# Create a simple C program
cat > ~/project/hello.c << EOF
#include <stdio.h>

int main() {
    printf("Hello, world!\n");
    return 0;
}
EOF

# Create the configure.ac file
cat > ~/project/configure.ac << EOF
AC_INIT([hello], [1.0], [your@email.com])
AC_PROG_CC
AC_OUTPUT([Makefile])
EOF

# Generate the configure script
cd ~/project
autoconf

# Run the generated configure script and build the program
./configure
make