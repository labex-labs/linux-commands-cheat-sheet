#!/bin/bash

# Print current environment variables
echo "Current environment variables:"
env

# Create a new environment variable
export MY_VAR="Hello, World!"
echo "MY_VAR=$MY_VAR"

# Modify environment variable using env command
env MY_VAR="Goodbye, World!" echo "MY_VAR=$MY_VAR"

# Remove environment variable using env command
env -u MY_VAR echo "MY_VAR=$MY_VAR"