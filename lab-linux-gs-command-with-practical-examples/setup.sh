#!/bin/bash

# Create a sample PDF file
cd ~/project
echo "This is a sample PDF file." > sample.pdf

# Convert PDF to JPEG
gs -sDEVICE=jpeg -o sample.jpg sample.pdf