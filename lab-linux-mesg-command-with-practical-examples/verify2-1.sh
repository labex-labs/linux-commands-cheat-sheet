#!/bin/bash
if grep -q "Hello, this is a test message." ~/.zsh_history; then
  exit 0
else
  echo "Message was not sent to the user."
  exit 1
fi