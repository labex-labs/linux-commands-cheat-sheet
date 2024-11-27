#!/bin/bash

# Create the sample file
mkdir -p ~/project
echo "This is a sample file." > ~/project/sample_file.txt

# Create the backup archive
sudo dump -0Lf ~/project/backup.archive ~/project/sample_file.txt