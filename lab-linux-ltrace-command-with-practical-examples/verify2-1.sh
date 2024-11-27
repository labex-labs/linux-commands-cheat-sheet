#!/bin/bash
if ! ltrace ./syscall | grep -q "sleep(2)"; then
    echo "The ltrace output does not contain the expected 'sleep(2)' call."
    exit 1
fi
echo "The ltrace output contains the expected 'sleep(2)' call."
exit 0