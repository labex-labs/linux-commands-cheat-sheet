#!/bin/bash
if ! ps -ef | grep getty | grep -q "tty4"; then
  exit 1
fi
if ! ps -ef | grep getty | grep -q "tty5"; then
  exit 1
fi
if ! ps -ef | grep getty | grep -q "tty6"; then
  exit 1
fi