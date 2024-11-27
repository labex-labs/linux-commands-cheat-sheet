#!/bin/bash
if ! telnet non-existent-host | grep -q "No route to host"; then
  exit 1
fi