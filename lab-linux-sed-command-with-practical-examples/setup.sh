#!/bin/bash

# Create sample.txt file
echo "This is a sample text file." > sample.txt

# Create sample2.txt file
echo "This is an old text. Replace the old text with new text." > sample2.txt

# Perform text substitution using sed
sed 's/old/new/g' sample2.txt > sample2_new.txt