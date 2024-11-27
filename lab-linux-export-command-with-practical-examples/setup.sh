#!/bin/bash

# Check existing environment variables
echo "Existing environment variables:"
env

# Create a new environment variable
export MY_VARIABLE="Hello, World!"
echo "Created new environment variable MY_VARIABLE=$MY_VARIABLE"

# Create a new environment variable for application home
export MY_APP_HOME="/home/labex/myapp"
echo "Created new environment variable MY_APP_HOME=$MY_APP_HOME"

# Verify the new environment variables
echo "Verifying the new environment variables:"
echo "MY_VARIABLE=$MY_VARIABLE"
echo "MY_APP_HOME=$MY_APP_HOME"