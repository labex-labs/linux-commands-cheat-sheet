#!/bin/bash
if ! rwho | grep -q "User"; then
  exit 1
fi
if ! rwho | grep -q "tty"; then
  exit 1
fi
if ! rwho | grep -q "host"; then
  exit 1
fi
if ! rwho | grep -q "login@"; then
  exit 1
fi
if ! rwho | grep -q "idle"; then
  exit 1
fi
if ! rwho | grep -q "where"; then
  exit 1
fi