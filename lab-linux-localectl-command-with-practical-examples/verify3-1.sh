#!/bin/bash
if ! localectl status | grep -q 'X11 Layout: de'; then
  exit 1
fi