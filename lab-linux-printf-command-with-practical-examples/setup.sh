#!/bin/bash

# Create project directory if it doesn't exist
if [ ! -d ~/project ]; then
  mkdir ~/project
fi

# Change to project directory
cd ~/project

# Print "Hello, World!" using printf
printf "Hello, World!\n"

# Print variables using printf
name="John Doe"
age=30
printf "My name is %s and I am %d years old.\n" "$name" "$age"

# Format output using printf
printf "Name: %s\n" "John Doe"
printf "Name: %20s\n" "John Doe"
printf "Name: %-20s\n" "John Doe"
printf "Age: %d\n" 30
printf "Pi: %.2f\n" 3.14159
printf "Hexadecimal: %x\n" 255
printf "Octal: %o\n" 255