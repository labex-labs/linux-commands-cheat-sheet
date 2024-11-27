#!/bin/bash

# Create the example.txt file with the required permissions
touch ~/project/example.txt
chmod 644 ~/project/example.txt

# Verify the file permissions
ls -l ~/project/example.txt
stat ~/project/example.txt