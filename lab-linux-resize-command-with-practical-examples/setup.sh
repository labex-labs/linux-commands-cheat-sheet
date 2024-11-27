#!/bin/bash

# Create a new partition
sudo fdisk /dev/sdb << EOF
n
p
1
<Enter>
<Enter>
w
EOF

# Resize the new partition to 20GB
sudo resize 20G /dev/sdb1

# Print the new size of the partition
sudo resize -p /dev/sdb1