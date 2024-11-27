#!/bin/bash

# Create example.txt file
if [ ! -f ~/project/example.txt ]; then
  echo "Line 1" > ~/project/example.txt
  echo "Line 2" >> ~/project/example.txt
  echo "Line 3" >> ~/project/example.txt
  echo "Line 4" >> ~/project/example.txt
  echo "Line 5" >> ~/project/example.txt
  echo "Line 6" >> ~/project/example.txt
  echo "Line 7" >> ~/project/example.txt
  echo "Line 8" >> ~/project/example.txt
  echo "Line 9" >> ~/project/example.txt
  echo "Line 10" >> ~/project/example.txt
fi