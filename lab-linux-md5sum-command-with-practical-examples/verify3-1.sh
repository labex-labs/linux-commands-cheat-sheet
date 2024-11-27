#!/bin/bash
echo "This is a test file." > test.txt
expected_checksum="e10adc3949ba59abbe56e057f20f883e"
actual_checksum=$(md5sum test.txt | awk '{print $1}')
if [ "$actual_checksum" == "$expected_checksum" ]; then
    exit 0
else
    echo "The MD5 checksum of the test.txt file does not match the expected value."
    exit 1
fi