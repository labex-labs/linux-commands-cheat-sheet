#!/bin/bash
if ! addr2line -e /bin/ls 0x4004e0 | grep "/usr/src/debug/coreutils/8.32-r0/coreutils-8.32/src/ls.c:1372"; then
  exit 1
fi