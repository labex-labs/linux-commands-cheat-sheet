#!/bin/bash
if [ "$(uname -s)" == "Linux" ]; then
  exit 0
else
  exit 1
fi