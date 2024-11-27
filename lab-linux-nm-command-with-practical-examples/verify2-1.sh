#!/bin/bash
nm_output=$(nm hello)
if echo "$nm_output" | grep -q "main" && echo "$nm_output" | grep -q "printf"; then
    exit 0
else
    exit 1
fi