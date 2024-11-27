#!/bin/bash
if ! sudo smbstatus -S | grep -q "IPC\$"; then
  exit 1
fi