#!/bin/bash
if sudo systemctl status vsftpd | grep -q "active (running)"; then
    exit 1
fi