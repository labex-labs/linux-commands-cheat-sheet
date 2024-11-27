#!/bin/bash

# Create a 100 MB Ext4 file system image
sudo dd if=/dev/zero of=ext4_image.img bs=1M count=100
sudo mkfs.ext4 ext4_image.img

# Intentionally corrupt the file system
sudo debugfs -w ext4_image.img
debugfs: set_super_value s_magic 0x1234
debugfs: write_super_block
debugfs: quit