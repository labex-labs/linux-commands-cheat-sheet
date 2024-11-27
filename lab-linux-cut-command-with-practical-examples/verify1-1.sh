#!/bin/bash
echo "field1 field2 field3" > file.txt
echo "another_field1 another_field2 another_field3" >> file.txt

# Verify extracting fields
if ! diff <(cut -d ' ' -f 2,3 file.txt) <(echo "field2 field3" && echo "another_field2 another_field3"); then
  exit 1
fi

# Verify extracting characters
if ! diff <(cut -c 1-5,10-15 file.txt) <(echo "field" && echo "another_field"); then
  exit 1
fi

echo "Verification successful!"
exit 0