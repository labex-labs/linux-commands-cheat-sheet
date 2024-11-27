#!/bin/bash
if grep -q "Unattended-Upgrade::Allowed-Origins" /etc/apt/apt.conf.d/50unattended-upgrades; then
    echo "Automatic updates are configured correctly."
    exit 0
else
    echo "Automatic updates are not configured correctly."
    exit 1
fi