#!/bin/bash
if [[ ! -f "~/project/downloaded.txt" ]]; then
  exit 1
fi
if [[ "$(cat ~/project/downloaded.txt)" != "This is a test file." ]]; then
  exit 1
fi