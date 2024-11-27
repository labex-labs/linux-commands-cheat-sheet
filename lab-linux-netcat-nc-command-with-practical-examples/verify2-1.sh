#!/bin/bash
if nc -z 127.0.0.1 8000; then
  exit 0
else
  exit 1
fi