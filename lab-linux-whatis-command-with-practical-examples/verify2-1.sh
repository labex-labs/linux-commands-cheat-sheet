#!/bin/bash
if ! whatis -a grep | grep -q "print lines matching a pattern"; then
  exit 1
fi
if ! whatis -n 5 passwd | grep -q "password file"; then
  exit 1
fi
if ! whatis -r '^ls' | grep -q "list directory contents"; then
  exit 1
fi