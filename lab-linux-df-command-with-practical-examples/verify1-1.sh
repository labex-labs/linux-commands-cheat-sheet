#!/bin/bash
df_output=$(df)
if [[ "$df_output" != *"Filesystem"* ]]; then
  exit 1
fi
exit 0