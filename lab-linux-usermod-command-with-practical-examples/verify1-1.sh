#!/bin/bash
if grep -q "John Doe" /etc/passwd; then
  exit 0
else
  exit 1
fi