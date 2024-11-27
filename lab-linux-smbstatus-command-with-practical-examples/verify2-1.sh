#!/bin/bash
if ! sudo smbstatus --help | grep -q "List shared resources"; then
  exit 1
fi