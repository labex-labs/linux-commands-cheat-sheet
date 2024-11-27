#!/bin/bash
if ! command -v htop &> /dev/null; then
  exit 1
fi