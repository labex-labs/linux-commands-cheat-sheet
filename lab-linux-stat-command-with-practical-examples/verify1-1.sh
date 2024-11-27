#!/bin/bash
if ! stat ~/project/example.txt &> /dev/null; then
  exit 1
fi