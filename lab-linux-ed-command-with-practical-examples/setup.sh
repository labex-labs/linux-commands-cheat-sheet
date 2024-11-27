#!/bin/bash

# Check ed version
ed --version

# Create example.txt file
ed example.txt
a
This is a sample text file.
This is the second line.
.
w
q

# Verify example.txt content
cat example.txt