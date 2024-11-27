#!/bin/bash

# Create the sample.txt file
echo "A B C D E" > sample.txt
echo "1 2 3 4 5" >> sample.txt
echo "X Y Z W V" >> sample.txt

# Create the project directory if it doesn't exist
if [ ! -d ~/project ]; then
  mkdir ~/project
fi

# Change to the project directory
cd ~/project