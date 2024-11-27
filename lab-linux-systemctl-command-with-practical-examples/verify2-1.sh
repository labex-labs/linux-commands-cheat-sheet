#!/bin/bash
if sudo systemctl is-enabled sshd.service | grep -q 'enabled'; then
  exit 0
else
  exit 1
fi