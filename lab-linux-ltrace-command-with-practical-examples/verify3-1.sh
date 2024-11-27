#!/bin/bash
if ! ltrace -T ./leaks | grep -q "malloc(400)"; then
    echo "The ltrace output does not contain the expected 'malloc(400)' call."
    exit 1
fi
if ltrace -T ./leaks | grep -q "free("; then
    echo "The ltrace output contains a 'free()' call, indicating that the memory leak has been fixed."
    exit 1
fi
echo "The ltrace output confirms the presence of a memory leak in the leaks.c program."
exit 0