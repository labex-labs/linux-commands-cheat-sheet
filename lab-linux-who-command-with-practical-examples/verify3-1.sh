#!/bin/bash
if ! who | awk '{print $1}' | grep -q "labex"; then
  exit 1
fi
if ! who | awk '{print $4, $5}' | grep -q "2023-04-11 09:15"; then
  exit 1
fi
if ! who | grep -q '(172.17.0.1)'; then
  exit 1
fi