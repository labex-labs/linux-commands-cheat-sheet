#!/bin/bash
if awk -F',' 'NR > 1 {total = $2 * $3; print $1, "Total Revenue:", total}' sales.csv | grep -q 'Laptop Total Revenue: 9999.9'; then
  if awk -F',' 'NR > 1 {total += $3; count++} END {print "Average Price:", total/count}' sales.csv | grep -q 'Average Price: 649.995'; then
    exit 0
  else
    echo "Failed to calculate the average price of all products correctly."
    exit 1
  fi
else
  echo "Failed to calculate the total revenue for each product correctly."
  exit 1
fi