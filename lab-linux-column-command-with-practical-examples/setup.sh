#!/bin/bash

# Create the data.txt file
cat << EOF > data.txt
Name,Age,City
John,30,New York
Jane,25,Los Angeles
Bob,40,Chicago
EOF

# Create the data.csv file
cat << EOF > data.csv
Name,Age,City,Occupation
John Doe,30,New York,Software Engineer
Jane Smith,25,Los Angeles,Marketing Manager
Bob Johnson,40,Chicago,Sales Representative
EOF

# Format the data.txt file using the column command
column -t -s, data.txt

# Format the data.csv file using the column command
column -t -s, data.csv