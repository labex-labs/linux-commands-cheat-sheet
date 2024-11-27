#!/bin/bash
if ! telnet www.example.com 80 | grep -q "Connected to www.example.com"; then
  exit 1
fi