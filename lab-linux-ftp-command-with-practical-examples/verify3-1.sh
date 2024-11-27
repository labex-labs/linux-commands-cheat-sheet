#!/bin/bash
if ftp -v ftp.example.com <<EOF
cd /path/to/remote/directory
put test_file.txt
quit
EOF
then
    echo "File upload successful"
    exit 0
else
    echo "File upload failed"
    exit 1
fi