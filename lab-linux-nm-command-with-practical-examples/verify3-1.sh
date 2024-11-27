#!/bin/bash
nm_output=$(nm -T hello)
if echo "$nm_output" | grep -q "main"; then
    exit 0
else
    exit 1
fi