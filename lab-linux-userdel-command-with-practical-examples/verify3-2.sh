#!/bin/bash
if [ -e "/var/spool/mail/testuser" ]; then
  exit 1
else
  exit 0
fi