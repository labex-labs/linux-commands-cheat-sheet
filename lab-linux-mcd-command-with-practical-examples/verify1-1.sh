#!/bin/bash
if [ "$(pwd)" != "$HOME/project/example/subdir1/subdir2" ]; then
  exit 1
fi