#!/bin/bash

# Create sample directory and files
cd ~/project
mkdir -p sample_dir
touch sample_dir/file1.txt sample_dir/file2.txt

# Create archive using cpio
cd ~/project
ls -1 sample_dir | cpio -o > archive.cpio

# Extract archive using cpio
cd ~/project
cpio -i < archive.cpio