#!/bin/bash
output=$(~/project/conditional_loops.sh)
if [[ "$output" == *"You are a minor."* && "$output" == *"Counting from 1 to 5:"* && "$output" == *"1"* && "$output" == *"2"* && "$output" == *"3"* && "$output" == *"4"* && "$output" == *"5"* ]]; then
  echo "The script output is correct"
  exit 0
else
  echo "The script output is incorrect"
  exit 1
fi