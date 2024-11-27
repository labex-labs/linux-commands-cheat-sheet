#!/bin/bash
if ! pstree | grep -q "systemd"; then
  exit 1
fi