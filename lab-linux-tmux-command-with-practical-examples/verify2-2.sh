#!/bin/bash
tmux switch -t my-session
if [ $? -ne 0 ]
then
    echo "Failed to switch to the 'my-session' tmux session"
    exit 1
fi
exit 0