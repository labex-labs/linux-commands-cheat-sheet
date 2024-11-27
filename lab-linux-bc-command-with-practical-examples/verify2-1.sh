#!/bin/bash
bc <<< "10 + 5" | grep -q "15"
if [ $? -ne 0 ]; then
    echo "Failed to perform basic addition operation."
    exit 1
fi

bc <<< "20 - 8" | grep -q "12" 
if [ $? -ne 0 ]; then
    echo "Failed to perform basic subtraction operation."
    exit 1
fi

bc <<< "4 * 6" | grep -q "24"
if [ $? -ne 0 ]; then
    echo "Failed to perform basic multiplication operation."
    exit 1
fi

bc <<< "18 / 3" | grep -q "6"
if [ $? -ne 0 ]; then
    echo "Failed to perform basic division operation."
    exit 1
fi

bc <<< "(10 + 5) * 3" | grep -q "45"
if [ $? -ne 0 ]; then
    echo "Failed to perform complex calculation with parentheses."
    exit 1
fi

echo "All basic arithmetic operations verified successfully."
exit 0