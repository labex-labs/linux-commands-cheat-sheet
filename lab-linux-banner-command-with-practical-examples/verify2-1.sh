#!/bin/bash
if ! banner "Hello, World!" | grep -q "_   _      _ _        __        __"; then
  exit 1
fi