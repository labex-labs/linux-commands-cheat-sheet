#!/bin/bash

# Create the data.csv file
echo "Name,Age,City" > data.csv
echo "John,25,New York" >> data.csv
echo "Jane,30,Los Angeles" >> data.csv
echo "Bob,35,Chicago" >> data.csv

# Test the col command
echo -e "one\ttwo\nthree\tfour" | col -x

# Format the data.csv file using col
cat data.csv | col -t