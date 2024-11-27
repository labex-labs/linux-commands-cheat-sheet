#!/bin/bash

# Create the project directory if it doesn't exist
if [ ! -d ~/project/sample-project ]; then
    mkdir -p ~/project/sample-project
    cd ~/project/sample-project
fi

# Create the configure.ac file
if [ ! -f configure.ac ]; then
    cat << EOF > configure.ac
AC_INIT([Sample Project], [1.0], [user@example.com])
AM_INIT_AUTOMAKE
AC_PROG_CC
AC_OUTPUT
EOF
fi

# Run autoreconf to generate the necessary build system files
autoreconf -i