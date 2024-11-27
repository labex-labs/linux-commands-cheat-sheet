#!/bin/bash
if ! sudo getty -m -n -t 60 tty1 | grep -q "ubuntu login:"; then
  exit 1
fi
if ! sudo getty --flow-control tty2 > /dev/null 2>&1; then
  exit 1
fi
if ! sudo getty -I "Welcome to the Lab!" tty3 | grep -q "Welcome to the Lab!"; then
  exit 1
fi