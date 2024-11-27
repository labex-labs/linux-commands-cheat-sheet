#!/bin/bash

# Create the necessary directories
mkdir -p ~/project

# Set the correct permissions
chmod -R 755 ~/project

# Print the basic echo command syntax
echo "# Understand the Basic Syntax of the echo Command"
echo "echo [options] [string]"
echo "  -n: Suppresses the trailing newline character"
echo "  -e: Enables the interpretation of backslash escapes"
echo

# Demonstrate the echo command
echo "# Use echo to Print Text to the Console"
echo "echo \"This is a message printed to the console.\""
name="John Doe"
echo "echo \"Hello, \$name!\""