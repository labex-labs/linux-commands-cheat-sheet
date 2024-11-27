#!/bin/bash

# Create the necessary directories
mkdir -p ~/project/seq_examples

# Navigate to the project directory
cd ~/project

# Generate numeric sequences with the seq command
echo "Generating numeric sequences with the seq command:"
seq 5
echo "Sequence from 2 to 10 with step 2:"
seq 2 2 10
echo "Descending sequence from 10 to 0 with step -2:"
seq 10 -2 0

# Explore the seq command options
echo "Exploring the seq command options:"
echo "Sequence with custom format:"
seq -f "Value: %.2f" 1 0.5 5
echo "Sequence with equal width:"
seq -w 01 05
echo "Sequence with custom separator:"
seq -s ", " 1 5