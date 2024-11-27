#!/bin/bash
if ! grep -q "The quick brown fox jumps over the lazy dog." ~/project/sample.txt
then
    echo "Spelling errors not corrected properly"
    exit 1
fi
echo "Spelling errors corrected successfully"
exit 0