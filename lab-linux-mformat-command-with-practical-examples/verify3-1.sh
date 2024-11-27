#!/bin/bash
if ! sudo mformat -h | grep -q "Format options:"; then
  exit 1
fi