#!/bin/bash
if ! grep -q "uname -a" ~/.zsh_history; then
    echo "You did not execute a remote command using the rlogin command."
    exit 1
fi
echo "You successfully executed a remote command."
exit 0