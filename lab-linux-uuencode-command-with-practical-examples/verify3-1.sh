#!/bin/bash
if [ -f encoded_image.txt ] && [ -f embedded_binary.sh ]; then
  exit 0
else
  exit 1
fi