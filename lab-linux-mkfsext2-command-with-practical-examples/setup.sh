#!/bin/bash

# Create a new partition using fdisk
sudo fdisk /dev/sdb << EOF
n
p
1
<enter>
<enter>
w
EOF

# Create an ext2 file system on the new partition
sudo mkfs.ext2 /dev/sdb1