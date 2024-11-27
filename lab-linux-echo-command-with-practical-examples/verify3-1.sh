#!/bin/bash
name="John Doe"
if echo -e "Name:\t$name\nAge:\t30" | grep -q "Name:\tJohn Doe\nAge:\t30"; then
    exit 0
else
    echo "The echo command did not produce the expected output."
    exit 1
fi