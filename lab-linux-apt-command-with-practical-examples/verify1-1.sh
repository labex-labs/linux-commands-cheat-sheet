#!/bin/bash
if ! sudo apt install -y htop > /dev/null 2>&1; then
  exit 1
fi
if ! htop --version > /dev/null 2>&1; then
  exit 1
fi
exit 0