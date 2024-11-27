#!/bin/bash

# Create the data.txt file
echo -e "apple\norange\nbanana\npear" > data.txt

# Sort the contents of data.txt
sort data.txt

# Create the data2.txt file
echo -e "John,25,male\nJane,30,female\nBob,35,male\nAlice,28,female" > data2.txt

# Sort data2.txt by the first field (name)
sort -t ',' -k 1 data2.txt

# Sort data2.txt by the second field (age)
sort -t ',' -k 2n data2.txt