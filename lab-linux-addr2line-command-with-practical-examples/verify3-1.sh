#!/bin/bash
if ! addr2line -e hello -f 0x4004e0 | grep "main"; then
  exit 1
fi
if ! addr2line -e hello 0x4004e0 0x4004f0 | grep "/home/labex/project/hello.c:3"; then
  exit 1
fi
if ! addr2line -e hello 0x4004e0 0x4004f0 | grep "printf"; then
  exit 1
fi