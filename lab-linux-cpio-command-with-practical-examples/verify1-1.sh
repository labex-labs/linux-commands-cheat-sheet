#!/bin/bash
if ! cpio --help | grep -q "copy-in"; then
  exit 1
fi
if ! cpio --help | grep -q "copy-out"; then
  exit 1
fi
if ! cpio --help | grep -q "copy-pass"; then
  exit 1
fi