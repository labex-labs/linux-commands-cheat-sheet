#!/bin/bash
if ! diff3 --help | grep -q "compare three files line by line"; then
  exit 1
fi