#!/bin/bash
data=$(gawk -F, '{print $1, $3}' ~/project/data.txt | grep -v "Name City")
if [[ "$data" != "John New York\nJane London\nBob Paris" ]]; then
  exit 1
fi