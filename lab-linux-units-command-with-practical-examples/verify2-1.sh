#!/bin/bash
if ! units -t "5 hour to minute" | grep -q "300"; then
    echo "Failed to convert 5 hours to minutes correctly."
    exit 1
fi
if ! units -t "7 day to second" | grep -q "604800"; then
    echo "Failed to convert 7 days to seconds correctly."
    exit 1
fi
if ! units -t "500 millisecond to microsecond" | grep -q "500000"; then
    echo "Failed to convert 500 milliseconds to microseconds correctly."
    exit 1
fi
echo "Time unit conversions verified successfully."
exit 0