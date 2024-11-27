#!/bin/bash
if [ "$(stat -c '%G' ~/project/myfile.txt)" != "admin" ]; then
  exit 1
fi