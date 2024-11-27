#!/bin/bash
if dip status | grep -q "Connected: yes"; then
  exit 0
else
  echo "The dial-up connection is not established"
  exit 1
fi