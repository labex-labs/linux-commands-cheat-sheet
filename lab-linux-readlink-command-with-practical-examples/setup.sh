#!/bin/bash

# Create the project directory if it doesn't exist
if [ ! -d ~/project ]; then
  mkdir ~/project
fi

# Create the symbolic link
cd ~/project
ln -s /usr/bin/python3 python_link