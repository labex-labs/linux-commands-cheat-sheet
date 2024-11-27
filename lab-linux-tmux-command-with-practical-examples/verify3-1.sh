#!/bin/bash
if [ ! -f ~/.tmux.conf ]
then
    echo "The tmux configuration file ~/.tmux.conf does not exist."
    exit 1
fi

if ! grep -q "set -g prefix C-a" ~/.tmux.conf
then
    echo "The custom prefix key (Ctrl+a) is not set in the tmux configuration file."
    exit 1
fi

if ! grep -q "set -g mouse on" ~/.tmux.conf
then
    echo "Mouse support is not enabled in the tmux configuration file."
    exit 1
fi

exit 0