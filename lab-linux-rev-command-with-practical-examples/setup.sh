#!/bin/bash

# Create the example.txt file
echo "This is a sample text file." > example.txt
echo "The quick brown fox jumps over the lazy dog." >> example.txt

# Reverse the text in example.txt and save it to reversed_example.txt
rev example.txt > reversed_example.txt