#!/bin/bash
if ! sudo pmap -x 1234 | grep -q "total"; then
  exit 1
fi