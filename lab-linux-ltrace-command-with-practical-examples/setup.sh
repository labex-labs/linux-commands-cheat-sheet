#!/bin/bash

# Install ltrace
sudo apt-get update
sudo apt-get install -y ltrace

# Create hello.c file
mkdir -p ~/project
cat << EOF > ~/project/hello.c
#include <stdio.h>

int main() {
    printf("Hello, world!\n");
    return 0;
}
EOF

# Compile hello.c
gcc -o ~/project/hello ~/project/hello.c