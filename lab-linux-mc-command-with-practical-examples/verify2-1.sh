#!/bin/bash
if [ -n "$(grep "mc" ~/.zsh_history)" ]; then
    echo "You have explored the Midnight Commander interface."
    exit 0
else
    echo "You have not explored the Midnight Commander interface. Please follow the step instructions."
    exit 1
fi