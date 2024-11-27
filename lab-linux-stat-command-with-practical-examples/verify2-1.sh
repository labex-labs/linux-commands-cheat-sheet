#!/bin/bash
if ! stat ~/project/example.txt | grep -q 'regular empty file'; then
  exit 1
fi