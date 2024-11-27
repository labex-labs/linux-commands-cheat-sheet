#!/bin/bash
if ! who | grep -q "user2"; then
  exit 1
fi