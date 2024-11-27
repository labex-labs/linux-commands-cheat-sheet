#!/bin/bash

# Create an Ext4 filesystem on a partition
sudo fdisk /dev/sdb <<EOF
n
p
1


w
EOF

sudo mke2fs -t ext4 /dev/sdb1