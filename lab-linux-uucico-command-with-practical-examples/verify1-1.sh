#!/bin/bash
if uucico --version | grep -q "uucico (UUCP) 1.07"; then
  exit 0
else
  exit 1
fi