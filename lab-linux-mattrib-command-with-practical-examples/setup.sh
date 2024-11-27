#!/bin/bash

# Create example.txt file
touch example.txt

# Set read-only attribute on example.txt
sudo mattrib -r example.txt

# Create example_dir directory
mkdir example_dir

# Set hidden attribute on example_dir
sudo mattrib -h example_dir