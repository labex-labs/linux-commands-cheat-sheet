#!/bin/bash
if ! grep -q "doog" ~/project/sample.txt
then
    echo "The misspelled word 'doog' was not found in sample.txt."
    exit 1
fi
echo "The misspelled word 'doog' was found in sample.txt."
exit 0