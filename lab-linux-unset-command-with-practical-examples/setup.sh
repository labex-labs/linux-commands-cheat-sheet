#!/bin/bash

# Create an environment variable
export MY_VAR="Hello, World!"
echo $MY_VAR

# Unset the environment variable
unset MY_VAR
echo $MY_VAR

# Create a shell function
my_function() {
  echo "This is a shell function."
}
my_function

# Unset the shell function
unset -f my_function
my_function

# Create environment variables
export VAR1="Value 1"
export VAR2="Value 2"
export VAR3="Value 3"

# List all environment variables
env

# Unset a single variable
unset VAR1
echo $VAR1

# Unset multiple variables
unset VAR2 VAR3
echo $VAR2
echo $VAR3