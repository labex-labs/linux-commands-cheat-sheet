#!/bin/bash
if ! addr2line -e /bin/ls -f 0x4004e0 | grep "ls_file"; then
  exit 1
fi
if ! addr2line -e /bin/ls 0x4004e0 0x4004f0 | grep "/usr/src/debug/coreutils/8.32-r0/coreutils-8.32/src/ls.c"; then
  exit 1
fi