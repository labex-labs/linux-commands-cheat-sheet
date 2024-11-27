#!/bin/bash
if ! grep -q 'testers' /etc/group; then
  exit 1
fi