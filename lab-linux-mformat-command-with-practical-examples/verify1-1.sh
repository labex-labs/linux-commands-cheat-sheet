#!/bin/bash
if ! sudo mformat -h | grep -q "Usage: mformat"; then
  exit 1
fi