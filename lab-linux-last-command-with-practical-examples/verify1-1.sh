#!/bin/bash
if ! last | grep -q 'labex'; then
  exit 1
fi