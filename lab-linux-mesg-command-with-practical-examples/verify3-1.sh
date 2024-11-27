#!/bin/bash
if sudo mesg -g guest | grep -q "guest is n"; then
  exit 0
else
  echo "Message receiving permission for the guest user is not restricted."
  exit 1
fi