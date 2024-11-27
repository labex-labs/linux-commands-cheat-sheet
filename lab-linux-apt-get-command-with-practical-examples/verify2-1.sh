#!/bin/bash
if which tree &> /dev/null; then
  exit 0
else
  exit 1
fi