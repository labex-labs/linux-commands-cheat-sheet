#!/bin/bash
# Check if the user understands the key concepts of disk quota
if [ -z "$QUIZ_RESPONSE" ]; then
  echo "Please answer the following questions to verify your understanding:"
  echo "1. What is the difference between a soft limit and a hard limit?"
  echo "2. How can disk quota be used to limit the number of files (inodes) a user can create?"
  exit 1
else
  echo "Great! You have demonstrated an understanding of the key concepts of disk quota."
  exit 0
fi