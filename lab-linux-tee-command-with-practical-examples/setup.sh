#!/bin/bash

# Create sample.txt file
echo "This is a sample text file." > ~/project/sample.txt

# Create output.txt file using tee command
cat ~/project/sample.txt | tee ~/project/output.txt

# Append content to output.txt using tee -a
echo "Adding more content." | tee -a ~/project/output.txt