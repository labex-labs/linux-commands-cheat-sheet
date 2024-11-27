#!/bin/bash
if ftp -v ftp.example.com 2>&1 | grep -q "Login successful"; then
    echo "FTP connection successful"
    exit 0
else
    echo "FTP connection failed"
    exit 1
fi