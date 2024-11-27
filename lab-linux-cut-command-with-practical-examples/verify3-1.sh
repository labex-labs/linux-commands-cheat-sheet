#!/bin/bash
echo "Name,Age,City" > data.txt
echo "John,25,New York" >> data.txt
echo "Jane,30,London" >> data.txt
echo "Bob,35,Paris" >> data.txt

# Verify extracting name and city columns
if ! diff <(cat data.txt | cut -d ',' -f 1,3) <(echo "Name,City" && echo "John,New York" && echo "Jane,London" && echo "Bob,Paris"); then
  exit 1
fi

# Verify filtering and extracting columns
if ! diff <(cat data.txt | grep "New York" | cut -d ',' -f 1,3) <(echo "Name,City" && echo "John,New York"); then
  exit 1
fi

# Verify using cut with awk
if ! diff <(cat data.txt | awk -F ',' '{print $1, "is", $2, "years old and lives in", $3}' | cut -d ' ' -f 1,3,5,7) \
          <(echo "John is 25 years old and lives in New York" && echo "Jane is 30 years old and lives in London" && echo "Bob is 35 years old and lives in Paris"); then
  exit 1
fi

echo "Verification successful!"
exit 0