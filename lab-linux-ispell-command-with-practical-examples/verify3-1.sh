#!/bin/bash
if grep -q "som" ~/project/text.txt || grep -q "laxy" ~/project/text.txt; then
    echo "Misspelled words found in text.txt file"
    exit 1
fi
echo "No misspelled words found in text.txt file"