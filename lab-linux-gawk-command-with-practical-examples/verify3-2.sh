#!/bin/bash
transformed_data=$(gawk -F, '{years = int($2 / 1); months = ($2 % 1) * 12; print $1, years "y", months "m"}' ~/project/data.txt)
if [[ "$transformed_data" != "John 25y 0m\nJane 30y 0m\nBob 35y 0m" ]]; then
  exit 1
fi