#!/bin/bash
if [ "$(sudo chfn -f | grep -o "John Doe")" != "John Doe" ]; then
  exit 1
fi