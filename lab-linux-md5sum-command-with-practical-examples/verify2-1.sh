#!/bin/bash
if [ "$(md5sum file1.txt | awk '{print $1}')" == "e10adc3949ba59abbe56e057f20f883e" ] && \
   [ "$(md5sum file2.txt | awk '{print $1}')" == "c778c38f1bf5b425c468a45e316d71d2" ] && \
   [ "$(md5sum file3.txt | awk '{print $1}')" == "5d41402abc4b2a76b9719d911017c592" ]; then
    exit 0
else
    echo "The MD5 checksums of the files do not match the expected values."
    exit 1
fi