#!/bin/bash
if ! grep -q 'developers' /etc/group; then
  exit 1
fi