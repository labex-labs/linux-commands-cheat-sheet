#!/bin/bash
if ! units -t "5 meter + 10 foot" | grep -q "7.6248"; then
    echo "Failed to add 5 meters and 10 feet correctly."
    exit 1
fi
if ! units -t "10 pound - 3 kilogram" | grep -q "4.8181818"; then
    echo "Failed to subtract 3 kilograms from 10 pounds correctly."
    exit 1
fi
if ! units -t "2 mile * 3 hour" | grep -q "6 mile_hour"; then
    echo "Failed to multiply 2 miles by 3 hours correctly."
    exit 1
fi
if ! units -t "100 kilometer / 2 hour" | grep -q "50 kilometer/hour"; then
    echo "Failed to divide 100 kilometers by 2 hours correctly."
    exit 1
fi
echo "Arithmetic operations with units verified successfully."
exit 0