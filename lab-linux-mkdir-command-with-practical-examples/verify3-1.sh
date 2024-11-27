#!/bin/bash
if [ -d ~/project/my_dir ] && [ -d ~/project/secret_dir ] && [ "$(stat -c '%a' ~/project/my_dir)" = "755" ] && [ "$(stat -c '%a' ~/project/secret_dir)" = "700" ]; then
  exit 0
else
  exit 1
fi