#!/bin/bash
if wget --help | grep -q "Usage: wget"; then
  exit 0
else
  exit 1
fi