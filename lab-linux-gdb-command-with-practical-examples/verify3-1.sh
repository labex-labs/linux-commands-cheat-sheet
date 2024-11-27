#!/bin/bash
if grep -q "Final value of shared_variable" ~/.zsh_history; then
    echo "Debugged the race condition in the multithreaded program"
    exit 0
else
    echo "Did not debug the race condition in the multithreaded program"
    exit 1
fi