#!/bin/bash

# Create sample files
echo -e "Apple\nBanana\nCherry" > file1.txt
echo -e "Red\nYellow\nPurple" > file2.txt
echo -e "Fruit\nFruit\nFruit" > file3.txt
echo -e "Monday\nTuesday\nWednesday" > days.txt
echo -e "1\n2\n3" > numbers.txt

# Create project directory if it doesn't exist
if [ ! -d ~/project ]; then
  mkdir ~/project
fi
cd ~/project

# Combine files horizontally
paste file1.txt file2.txt file3.txt

# Combine files vertically
paste -d "\n" file1.txt file2.txt file3.txt

# Create matrix-like structure
paste days.txt numbers.txt