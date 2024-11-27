#!/bin/bash

# Create sample directory and files
mkdir -p ~/project/documents
touch ~/project/documents/f

# Measure disk usage of the directory
mdu -h ~/project/documents
mdu -s ~/project/documents