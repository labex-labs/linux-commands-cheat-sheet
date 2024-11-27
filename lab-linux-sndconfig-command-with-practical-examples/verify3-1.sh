#!/bin/bash
if sudo sndconfig --list | grep -q "Intel 82801AA-ICH"; then
  exit 0
else
  exit 1
fi