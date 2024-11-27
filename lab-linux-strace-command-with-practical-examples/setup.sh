#!/bin/bash

# Check if strace is installed
if ! command -v strace &> /dev/null
then
    sudo apt-get update
    sudo apt-get install -y strace
fi

# Create the project directory if it doesn't exist
if [ ! -d ~/project ]; then
    mkdir ~/project
fi

# Change to the project directory
cd ~/project

# Create a Python script for tracing system calls
cat << EOF > trace_script.py
import time

print("Hello, World!")
time.sleep(5)
EOF

# Trace the Python script using strace
strace python3 trace_script.py