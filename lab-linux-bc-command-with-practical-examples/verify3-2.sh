#!/bin/bash
bc <<< "scale=2; sqrt(16)" | grep -q "4.00"
if [ $? -ne 0 ]; then
    echo "Failed to use the sqrt function correctly."
    exit 1
fi

bc <<< "sin(30)" | grep -q "0.50"
if [ $? -ne 0 ]; then
    echo "Failed to use the sin function correctly."
    exit 1
fi

bc <<< "log(100)" | grep -q "2.00"
if [ $? -ne 0 ]; then
    echo "Failed to use the log function correctly."
    exit 1
fi

bc <<< "scale=4; 3 / 2" | grep -q "1.5000"
if [ $? -ne 0 ]; then
    echo "Failed to use the scale command correctly."
    exit 1
fi

echo "Advanced functions verified successfully."
exit 0