#!/bin/bash
if ! w | grep -q "user2"; then
  exit 1
fi