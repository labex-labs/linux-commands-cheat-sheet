#!/bin/bash
if ! sudo systemctl status vsftpd | grep -q "inactive (dead)"; then
    exit 1
fi