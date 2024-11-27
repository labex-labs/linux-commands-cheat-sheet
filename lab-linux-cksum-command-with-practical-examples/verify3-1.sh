#!/bin/bash
echo "This is a sample file." > sample.txt
original_cksum=$(cksum sample.txt | awk '{print $1}')
echo "Modified sample file." > sample.txt
modified_cksum=$(cksum sample.txt | awk '{print $1}')
if [[ "$original_cksum" == "$modified_cksum" ]]; then
  exit 1
fi