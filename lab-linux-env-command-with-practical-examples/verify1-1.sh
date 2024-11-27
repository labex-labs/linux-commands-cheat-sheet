#!/bin/bash
if ! env | grep -q "MY_VAR=Hello, World!"; then
  exit 1
fi