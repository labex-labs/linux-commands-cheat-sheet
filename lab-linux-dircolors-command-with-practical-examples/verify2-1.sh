#!/bin/bash
if ! grep -q "DIR 01;32" ~/.dircolors; then
  exit 1
fi
if ! ls -l ~/project | grep -q "[1;32mdirectory[0m"; then
  exit 1
fi