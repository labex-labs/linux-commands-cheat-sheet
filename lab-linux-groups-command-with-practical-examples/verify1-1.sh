#!/bin/bash
if ! groups labex | grep -q 'labex sudo'; then
  exit 1
fi