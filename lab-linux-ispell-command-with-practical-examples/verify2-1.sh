#!/bin/bash
if ! grep -q "word" ~/project/word.txt; then
    echo "Word in word.txt file is not corrected"
    exit 1
fi
echo "Word in word.txt file is corrected"