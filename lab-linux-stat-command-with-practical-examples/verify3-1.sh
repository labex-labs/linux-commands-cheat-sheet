#!/bin/bash
if ! stat -c '%A %U %G' ~/project/example.txt | grep -q '-rw-r--r-- labex labex'; then
  exit 1
fi