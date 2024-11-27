#!/bin/bash
set -e

# Create sample files
echo "10 20 30" > numbers1.txt
echo "40 50 60" > numbers2.txt
echo "70 80 90" > numbers3.txt
echo "3.14 6.28 9.42" > float_numbers.txt

# Check the sum of individual files
sum numbers1.txt | grep -q "60 3 numbers1.txt"
sum numbers2.txt | grep -q "150 3 numbers2.txt"
sum numbers3.txt | grep -q "240 3 numbers3.txt"

# Check the total sum
sum -s numbers1.txt numbers2.txt numbers3.txt | grep -q "450 9 total"

# Check the sum of float numbers
sum float_numbers.txt | grep -q "18.84 3 float_numbers.txt"