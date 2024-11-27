#!/bin/bash
if ! stat -c '%U:%G' example.txt | grep -q 'labex:labex'; then
  exit 1
fi