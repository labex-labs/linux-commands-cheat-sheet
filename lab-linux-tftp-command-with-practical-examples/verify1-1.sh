#!/bin/bash
if [[ $(tftp --version) != *"tftp-hpa version 5.2"* ]]; then
  exit 1
fi