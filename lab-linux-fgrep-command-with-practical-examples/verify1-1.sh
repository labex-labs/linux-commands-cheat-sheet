#!/bin/bash
if fgrep "example" example.txt | grep -q "This is an example line."; then
  exit 0
else
  exit 1
fi