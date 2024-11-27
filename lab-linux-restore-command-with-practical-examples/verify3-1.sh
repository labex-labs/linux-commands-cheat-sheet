#!/bin/bash
if [ ! -d ~/project/backup_dir ]; then
    exit 1
fi
if [ ! -f ~/project/backup_dir/file1.txt ]; then
    exit 1
fi
if [ ! -f ~/project/backup_dir/subdir1/file2.txt ]; then
    exit 1
fi
if [ ! -f ~/project/backup_dir/subdir2/file3.txt ]; then
    exit 1
fi