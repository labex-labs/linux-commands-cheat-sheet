#!/bin/bash
if ! sudo apt install -y tree > /dev/null 2>&1; then
  exit 1
fi
if ! sudo apt remove -y tree > /dev/null 2>&1; then
  exit 1
fi
if tree --version > /dev/null 2>&1; then
  exit 1
fi
exit 0