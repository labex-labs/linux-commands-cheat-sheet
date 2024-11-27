#!/bin/bash
if ! mkfs.msdos --version | grep "util-linux 2.38"; then
  exit 1
fi