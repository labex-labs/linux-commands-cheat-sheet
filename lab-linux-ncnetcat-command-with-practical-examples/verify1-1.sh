#!/bin/bash
if nc --version &>/dev/null; then
  exit 0
else
  exit 1
fi