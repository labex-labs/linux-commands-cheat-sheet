#!/bin/bash

# Create sample.txt file
echo "This is a sample text file." > ~/project/sample.txt

# Explore mread command options
mread -n 5 ~/project/sample.txt
mread -c 10 ~/project/sample.txt
mread -s 5 -n 5 ~/project/sample.txt
mread -q -n 10 ~/project/sample.txt