#!/bin/bash
if ! grep -q "rlogin 192.168.1.100" ~/.zsh_history; then
    echo "You did not establish a remote login session with the rlogin command."
    exit 1
fi
echo "You successfully established a remote login session."
exit 0