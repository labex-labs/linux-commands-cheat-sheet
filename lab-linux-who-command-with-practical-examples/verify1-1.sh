#!/bin/bash
if ! who | grep -q "labex"; then
  exit 1
fi