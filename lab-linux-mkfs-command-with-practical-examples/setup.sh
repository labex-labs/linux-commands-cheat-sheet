#!/bin/bash

# Check available file system types
sudo mkfs.types

# Create an ext4 file system on a partition
sudo mkfs -t ext4 /dev/sdb1