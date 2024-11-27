#!/bin/bash
if grep -q "Ubuntu" /etc/os-release; then
  exit 0
else
  echo "The /etc/os-release file does not contain the expected 'Ubuntu' string."
  exit 1
fi