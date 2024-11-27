#!/bin/bash

# Create the project directory if it doesn't exist
if [ ! -d ~/project ]; then
  mkdir ~/project
fi

# Change to the project directory
cd ~/project

# Create a Python script file
touch python_exploration.py

# Open the Python script file in the nano editor
nano python_exploration.py

# Add the Python code to the script file
cat << EOF >> python_exploration.py
import math

print("Hello, World!")

my_string = "Python is awesome!"
print(len(my_string))

my_number = 42
print(type(my_number))

my_number = -10
print(abs(my_number))

my_number = 3.14159
print(round(my_number, 2))

print(math.sqrt(16))
EOF

# Make the Python script file executable
chmod +x python_exploration.py

# Run the Python script
./python_exploration.py