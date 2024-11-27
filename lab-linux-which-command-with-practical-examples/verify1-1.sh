#!/bin/bash
if which ls | grep "/usr/bin/ls"; then
  exit 0
else
  exit 1
fi