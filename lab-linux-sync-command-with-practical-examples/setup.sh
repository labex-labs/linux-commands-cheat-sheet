#!/bin/bash

# Create the test file
touch ~/project/test_file.txt
echo "This is a test file." > ~/project/test_file.txt

# Synchronize file system data with sync command
sudo sync