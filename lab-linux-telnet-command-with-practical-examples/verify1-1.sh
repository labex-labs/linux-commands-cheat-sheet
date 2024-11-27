#!/bin/bash
if ! telnet --help | grep -q "Open a terminal to a remote host"; then
  exit 1
fi