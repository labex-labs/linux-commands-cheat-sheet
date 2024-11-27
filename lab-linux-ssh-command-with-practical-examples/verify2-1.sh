#!/bin/bash
if ssh -o BatchMode=yes -o ConnectTimeout=5 labex@localhost exit; then
  exit 0
else
  echo "Failed to connect to the remote server via SSH."
  exit 1
fi