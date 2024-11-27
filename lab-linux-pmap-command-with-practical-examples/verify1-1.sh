#!/bin/bash
if ! sudo pmap 1234 | grep -q "total"; then
  exit 1
fi