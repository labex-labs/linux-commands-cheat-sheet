#!/bin/bash

# Create a test file
cd ~/project
dd if=/dev/zero of=testfile.txt bs=1M count=10

# Scan the file system for bad blocks using mbadblocks
sudo mbadblocks /dev/sda1