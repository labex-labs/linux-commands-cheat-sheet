#!/bin/bash
if ! sudo e2fsck -n ext4_image.img | grep "clean"; then
    echo "The file system is not clean or repaired properly."
    exit 1
fi
echo "The file system is clean and repaired successfully."
exit 0