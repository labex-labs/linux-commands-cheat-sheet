#!/bin/bash
if ! snap list | grep -q "vlc"; then
  exit 1
fi
exit 0