#!/bin/bash
if ! grep -q "Security alert: Failed login attempt detected!" ~/.zsh_history; then
    echo "swatch did not trigger the security alert script."
    exit 1
elif ! grep -q "Cron alert: Cron job executed" ~/.zsh_history; then
    echo "swatch did not trigger the cron alert script."
    exit 1
else
    echo "swatch successfully triggered both the security alert and cron alert scripts."
    exit 0
fi