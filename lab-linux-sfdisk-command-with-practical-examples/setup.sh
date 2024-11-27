#!/bin/bash

# Check sfdisk version
sfdisk --version

# Create a 20GB virtual disk
sudo fallocate -l 20G /tmp/disk.img
sudo losetup /dev/loop0 /tmp/disk.img

# Partition the disk using sfdisk
sudo sfdisk /dev/loop0 << EOF
label: dos
unit: sectors

/dev/loop0p1 : start=2048, size=20971520, type=83
EOF

# Verify the partition table
sudo sfdisk -l /dev/loop0