#!/bin/bash
if ! tmux ls | grep -q "my-session"
then
    echo "Failed to create a new tmux session named 'my-session'"
    exit 1
fi
exit 0