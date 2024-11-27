#!/bin/bash
if ! command -v tmux &> /dev/null
then
    echo "tmux is not installed. Please install it first."
    exit 1
fi
exit 0