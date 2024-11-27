#!/bin/bash

# Create a sample text file
echo -e "Line 1\nLine 2\nLine 3\nLine 4" > ~/project/sample.txt

# Reverse the order of lines in the sample text file
tac ~/project/sample.txt > ~/project/reversed_sample.txt