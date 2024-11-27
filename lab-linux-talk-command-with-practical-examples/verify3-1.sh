#!/bin/bash
if ! history | grep -q "mesg n"; then
  exit 1
fi
if ! history | grep -q "mesg y"; then
  exit 1
fi