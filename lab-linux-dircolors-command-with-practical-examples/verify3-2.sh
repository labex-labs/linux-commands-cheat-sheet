#!/bin/bash
if ! ls -l ~/project | grep -q "[1;32mdirectory[0m"; then
  exit 1
fi