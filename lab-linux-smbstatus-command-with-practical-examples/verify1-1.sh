#!/bin/bash
if ! sudo smbstatus | grep -q "Service"; then
  exit 1
fi