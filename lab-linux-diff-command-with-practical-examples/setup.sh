#!/bin/bash

# Create sample text files
cd ~/project
echo "This is file1.txt" > file1.txt
echo "This is file2.txt" > file2.txt

# Compare files using diff command
diff file1.txt file2.txt