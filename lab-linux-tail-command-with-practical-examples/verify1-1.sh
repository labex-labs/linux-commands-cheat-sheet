#!/bin/bash
if ! tail --help | grep -q "display the last"; then
  exit 1
fi
if ! tail -n 3 /etc/passwd | grep -q "root"; then
  exit 1
fi