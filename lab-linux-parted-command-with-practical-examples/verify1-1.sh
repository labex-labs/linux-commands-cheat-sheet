#!/bin/bash
if [ "$(sudo parted --version | head -n 1 | cut -d' ' -f3)" = "3.4" ]; then
  exit 0
else
  exit 1
fi