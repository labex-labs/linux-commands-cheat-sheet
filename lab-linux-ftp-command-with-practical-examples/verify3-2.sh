#!/bin/bash
if ftp -v ftp.example.com <<EOF
cd /path/to/remote/directory
get test_file.txt
quit
EOF
then
    if [ -f test_file.txt ]; then
        echo "File download successful"
        exit 0
    else
        echo "File download failed"
        exit 1
    fi
else
    echo "FTP connection failed"
    exit 1
fi