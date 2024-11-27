#!/bin/bash
df_output=$(df -h --output=source,fstype,size,used,avail,pcent,target)
if [[ "$df_output" != *"size"* ]] || [[ "$df_output" != *"used"* ]] || [[ "$df_output" != *"avail"* ]] || [[ "$df_output" != *"pcent"* ]] || [[ "$df_output" != *"target"* ]]; then
  exit 1
fi
exit 0