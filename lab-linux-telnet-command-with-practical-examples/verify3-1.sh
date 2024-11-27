#!/bin/bash
if ! telnet www.example.com 8080 | grep -q "Connection refused"; then
  exit 1
fi