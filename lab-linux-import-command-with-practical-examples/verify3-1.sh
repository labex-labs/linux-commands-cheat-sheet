#!/bin/bash
if ! [ -f ~/project/data.xlsx ]; then
  echo "The data.xlsx file does not exist in the ~/project directory."
  exit 1
fi
if ! command -v xlsx2csv > /dev/null; then
  echo "The xlsx2csv tool is not installed. Please install it first."
  exit 1
fi
if ! sqlite3 ~/project/sample.db "SELECT * FROM users;" | grep -q "John|25|New York"; then
  echo "The data from the data.xlsx file was not imported correctly into the users table."
  exit 1
fi
echo "The data from the data.xlsx file was imported successfully into the users table."
exit 0