#!/bin/bash
if [[ ! -f "/srv/tftp/test.txt" ]]; then
  exit 1
fi
if [[ "$(cat /srv/tftp/test.txt)" != "This is a test file." ]]; then
  exit 1
fi