#!/bin/bash
if ! (while true; do rwho; sleep 5; done) | grep -q "User"; then
  exit 1
fi