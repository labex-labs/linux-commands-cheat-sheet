#!/bin/bash
if ! dircolors --print-database | grep -q "NORMAL 00"; then
  exit 1
fi