#!/bin/bash
if sudo edquota -p labex | grep -q "Disk quotas for user labex (uid 1000):\n  Filesystem  blocks  soft  hard  inodes  soft  hard\n  /data         0       5000  6000    0      0     0"; then
  exit 0
else
  exit 1
fi