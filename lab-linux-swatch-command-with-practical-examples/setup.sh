#!/bin/bash

# Check if swatch is already installed
if ! command -v swatch &> /dev/null
then
    sudo apt-get update
    sudo apt-get install -y swatch
fi

# Create the project directory if it doesn't exist
if [ ! -d ~/project ]; then
    mkdir ~/project
fi

# Create the swatch configuration file
if [ ! -f ~/project/swatch.config ]; then
    cat << EOF > ~/project/swatch.config
# swatch.config
watchfor /error/
actions = echo "Error found: \$_"
EOF
fi