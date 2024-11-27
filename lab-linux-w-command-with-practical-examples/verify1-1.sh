#!/bin/bash
if ! w | grep -q "USER"; then
  exit 1
fi