#!/bin/bash
if ! mcopy -v ~/project/file.txt a: &> /dev/null; then
  exit 1
fi