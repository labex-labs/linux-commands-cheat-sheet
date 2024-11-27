#!/bin/bash
if [ "$(ls -l example.txt | awk '{print $1}')" != "-rw-r--r--" ]; then
  exit 1
fi