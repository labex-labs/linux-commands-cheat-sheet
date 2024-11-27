#!/bin/bash
df_output=$(df -h ~/project/sample_files)
if [[ "$df_output" != *"/home"* ]]; then
  exit 1
fi
exit 0