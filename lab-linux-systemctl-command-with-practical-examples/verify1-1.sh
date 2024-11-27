#!/bin/bash
if sudo systemctl list-units --type=service | grep -q 'sshd.service'; then
  exit 0
else
  exit 1
fi