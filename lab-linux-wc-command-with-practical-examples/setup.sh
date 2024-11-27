#!/bin/bash

# Create sample.txt file
echo "This is a sample text file." > sample.txt

# Check word count of sample.txt
echo "Checking word count of sample.txt:"
wc sample.txt
echo ""

# Check line, word, and character count separately
echo "Checking line, word, and character count separately:"
wc -l sample.txt
wc -w sample.txt
wc -c sample.txt
echo ""