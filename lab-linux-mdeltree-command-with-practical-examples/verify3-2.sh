#!/bin/bash
if [ "$(stat -c '%a' ~/project/test_dir)" != "755" ]; then
  exit 1
fi