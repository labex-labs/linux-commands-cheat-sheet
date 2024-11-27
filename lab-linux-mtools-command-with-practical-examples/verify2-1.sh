#!/bin/bash
if mtools --help | grep -q "mdir"; then
  exit 0
else
  exit 1
fi