#!/bin/bash
if [ "$(md5sum test.txt | awk '{print $1}')" == "e10adc3949ba59abbe56e057f20f883e" ]; then
    exit 0
else
    echo "The MD5 checksum of the test.txt file does not match the expected value."
    exit 1
fi