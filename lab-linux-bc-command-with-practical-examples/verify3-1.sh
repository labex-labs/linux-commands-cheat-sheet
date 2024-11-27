#!/bin/bash
bc <<< "x=5; y=10; z=x+y; print z" | grep -q "15"
if [ $? -ne 0 ]; then
    echo "Failed to assign and use variables correctly."
    exit 1
fi
echo "Variable assignment and usage verified successfully."
exit 0