#!/bin/bash
if ! grep -q 'group1' /etc/group || ! grep -q 'group2' /etc/group || ! grep -q 'group3' /etc/group; then
  exit 1
else
  exit 0
fi