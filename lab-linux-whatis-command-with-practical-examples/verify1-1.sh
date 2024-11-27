#!/bin/bash
if ! whatis ls | grep -q "list directory contents"; then
  exit 1
fi