#!/bin/bash
if ! expand --help | grep -q "convert tabs to spaces"; then
  exit 1
fi
if ! expand example.txt | grep -q "    "; then
  exit 1
fi
exit 0