#!/bin/bash
if ! [ -f ~/project/data.csv ]; then
  echo "The data.csv file does not exist in the ~/project directory."
  exit 1
fi
if ! sqlite3 ~/project/sample.db "SELECT * FROM users;" | grep -q "John|25|New York"; then
  echo "The data from the data.csv file was not imported correctly into the users table."
  exit 1
fi
echo "The data from the data.csv file was imported successfully into the users table."
exit 0