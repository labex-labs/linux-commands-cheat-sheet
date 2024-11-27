#!/bin/bash
if sudo chkconfig --list sshd | grep -q "2:off   3:on    4:on    5:on"; then
  exit 0
else
  echo "The sshd service is not configured as expected."
  exit 1
fi