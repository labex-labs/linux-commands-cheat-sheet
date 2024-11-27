#!/bin/bash
if ! whatis du | grep -q "estimate file space usage"; then
  exit 1
fi
if ! whatis -a user | grep -q "add a new user"; then
  exit 1
fi
if ! whatis -n 5 passwd | grep -q "password file"; then
  exit 1
fi