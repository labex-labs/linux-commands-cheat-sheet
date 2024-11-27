#!/bin/bash
if [ ! -f "$HOME/project/docs/guides/python/example.txt" ]; then
  exit 1
fi
if [ ! -f "$HOME/project/docs/guides/java/example/file.txt" ]; then
  exit 1
fi