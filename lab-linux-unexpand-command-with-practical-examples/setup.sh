#!/bin/bash

# Create sample.txt file with tabs
echo "This	is	a	sample	text	file	with	tabs." > sample.txt

# Convert tabs to spaces using unexpand
unexpand -a sample.txt > sample_spaces.txt

# Create directory structure
mkdir -p ~/project

# Set permissions
chmod -R 755 ~/project