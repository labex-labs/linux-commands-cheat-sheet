#!/bin/bash

# Create the project directory if it doesn't exist
if [ ! -d ~/project ]; then
  mkdir ~/project
fi

# Change to the project directory
cd ~/project

# Create a directory for the Process Management Lab
if [ ! -d process-management-lab ]; then
  mkdir process-management-lab
fi

# Change to the Process Management Lab directory
cd process-management-lab

# No additional setup required for this lab