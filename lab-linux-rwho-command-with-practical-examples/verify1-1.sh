#!/bin/bash
if ! rwho | grep -q "labex"; then
  exit 1
fi