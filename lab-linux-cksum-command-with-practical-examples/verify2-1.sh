#!/bin/bash
echo "This is a sample file." > sample.txt
if ! cksum sample.txt | grep -q "2995857905 21 sample.txt"; then
  exit 1
fi