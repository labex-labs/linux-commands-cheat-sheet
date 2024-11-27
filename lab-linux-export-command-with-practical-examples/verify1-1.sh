#!/bin/bash
if ! env | grep -q "MY_VARIABLE=Hello, World!"; then
  exit 1
fi