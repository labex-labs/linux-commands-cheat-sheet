#!/bin/bash
sudo systemctl start sshd.service
if sudo systemctl is-active sshd.service | grep -q 'active'; then
  sudo systemctl stop sshd.service
  if sudo systemctl is-active sshd.service | grep -q 'inactive'; then
    exit 0
  else
    exit 1
  fi
else
  exit 1
fi