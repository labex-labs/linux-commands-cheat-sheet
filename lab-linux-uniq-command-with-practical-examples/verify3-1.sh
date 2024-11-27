#!/bin/bash
if ! diff <(uniq -c sample.txt | sort -n) <(echo -e "   1 banana\n   2 orange\n   3 apple"); then
    exit 1
fi