#!/bin/bash
if ! last -n 3 | grep -q 'labex'; then
  exit 1
fi
if ! last -x | grep -q 'reboot'; then
  exit 1
fi
if ! last -i | grep -q '172.17.0.1'; then
  exit 1
fi