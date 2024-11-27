#!/bin/bash

# Initialize a Git Repository
cd ~/project
git init
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"

# Add and Commit Files to the Git Repository
echo "This is a test file." > test.txt
git add test.txt
git commit -m "Initial commit"