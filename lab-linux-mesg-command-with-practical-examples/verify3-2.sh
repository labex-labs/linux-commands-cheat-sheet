#!/bin/bash
if sudo mesg -g guest | grep -q "guest is y"; then
  exit 0
else
  echo "Message receiving permission for the guest user is not restored."
  exit 1
fi