#!/bin/bash
if nc -z ftp.example.com 21; then
    echo "FTP server connection successful"
    exit 0
else
    echo "FTP server connection failed"
    exit 1
fi