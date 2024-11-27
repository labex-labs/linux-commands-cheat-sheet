#!/bin/bash

# Check if Automake is installed
if ! command -v automake &> /dev/null
then
    echo "Installing Automake..."
    sudo apt-get update
    sudo apt-get install -y automake
fi

# Create the project directory
mkdir -p ~/project/automate-demo
cd ~/project/automate-demo

# Create the configure.ac file
cat << EOF > configure.ac
AC_INIT([automate-demo], [1.0], [example@example.com])
AM_INIT_AUTOMAKE
AC_CONFIG_FILES([Makefile])
AC_OUTPUT
EOF

# Create the Makefile.am file
cat << EOF > Makefile.am
bin_PROGRAMS = hello
hello_SOURCES = hello.c
EOF

# Create the hello.c file
cat << EOF > hello.c
#include <stdio.h>

int main() {
    printf("Hello, Automake!\n");
    return 0;
}
EOF

# Generate the Makefile
autoreconf -i
./configure
make

echo "Automake project setup complete."