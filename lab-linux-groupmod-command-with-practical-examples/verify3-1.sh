#!/bin/bash
if ! getent group developers | grep -q ":2000:"; then
  exit 1
fi