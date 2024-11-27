#!/bin/bash
if groups labex | grep -q "developers"; then
  exit 1
fi