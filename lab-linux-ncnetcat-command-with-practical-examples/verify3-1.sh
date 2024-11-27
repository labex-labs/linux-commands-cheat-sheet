#!/bin/bash
nc -z -u 127.0.0.1 8000
if [ $? -eq 0 ]; then
  exit 0
else
  exit 1
fi