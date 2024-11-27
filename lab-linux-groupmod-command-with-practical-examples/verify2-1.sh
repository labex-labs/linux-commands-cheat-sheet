#!/bin/bash
if ! getent group developers | grep -q "developers"; then
  exit 1
fi