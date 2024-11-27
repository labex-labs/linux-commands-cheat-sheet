#!/bin/bash
if ncftp -u myusername -p mypassword ftp.example.com -c "ls | grep 'local_file.txt'"; then
    echo "File upload successful"
    exit 0
else
    echo "File upload failed"
    exit 1
fi