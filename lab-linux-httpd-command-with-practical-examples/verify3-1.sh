#!/bin/bash
if curl -s http://example.com | grep -q "Welcome to example.com"; then
  if curl -s http://example.org | grep -q "Welcome to example.org"; then
    exit 0
  else
    echo "example.org virtual host is not working correctly."
    exit 1
  fi
else
  echo "example.com virtual host is not working correctly."
  exit 1
fi