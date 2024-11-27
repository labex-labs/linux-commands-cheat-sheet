#!/bin/bash
if [ "$(pwd)" != "$HOME/project/docs/guides/python" ]; then
  exit 1
fi
if [ ! -d "$HOME/project/docs/guides/linux" ]; then
  exit 1
fi