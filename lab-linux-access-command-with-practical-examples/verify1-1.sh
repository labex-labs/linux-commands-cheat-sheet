#!/bin/bash
if ! ls -l example.txt | grep -q 'rw-r--r--'; then
  exit 1
fi