#!/bin/bash
if ! localectl status | grep -q 'LANG=fr_FR.UTF-8'; then
  exit 1
fi