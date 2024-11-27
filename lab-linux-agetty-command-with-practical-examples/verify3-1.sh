#!/bin/bash
if sudo agetty --login-program /bin/login --autologin testuser tty1 | grep -q "testuser"; then
    exit 0
else
    echo "User login process failed"
    exit 1
fi