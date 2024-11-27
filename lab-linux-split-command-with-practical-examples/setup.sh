#!/bin/bash

# Create a large file for the examples
head -n 10000 /dev/urandom > ~/project/large_file.txt

# Split the large file into multiple parts
split -b 1m ~/project/large_file.txt ~/project/split_