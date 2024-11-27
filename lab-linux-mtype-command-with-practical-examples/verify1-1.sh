#!/bin/bash
if mtype --version | grep -q "GNU sharutils"; then
  exit 0
else
  exit 1
fi