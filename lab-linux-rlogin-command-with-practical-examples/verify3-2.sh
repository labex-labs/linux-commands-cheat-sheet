#!/bin/bash
if ! grep -q "rcp test_file.txt 192.168.1.100:/home/labex/" ~/.zsh_history; then
    echo "You did not transfer a file from the local to the remote system using the rcp command."
    exit 1
fi
if ! grep -q "rcp 192.168.1.100:/home/labex/test_file.txt ./" ~/.zsh_history; then
    echo "You did not transfer a file from the remote to the local system using the rcp command."
    exit 1
fi
echo "You successfully transferred files using the rcp command."
exit 0