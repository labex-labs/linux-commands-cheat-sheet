#!/bin/bash
echo "Name,Age,City" > data.txt
echo "John,25,New York" >> data.txt
echo "Jane,30,London" >> data.txt
echo "Bob,35,Paris" >> data.txt

# Verify extracting name and city columns
if ! diff <(cut -d ',' -f 1,3 data.txt) <(echo "Name,City" && echo "John,New York" && echo "Jane,London" && echo "Bob,Paris"); then
  exit 1
fi

# Verify extracting age and city columns
if ! diff <(cut -d ',' -f 2-3 data.txt) <(echo "Age,City" && echo "25,New York" && echo "30,London" && echo "35,Paris"); then
  exit 1
fi

echo "Verification successful!"
exit 0