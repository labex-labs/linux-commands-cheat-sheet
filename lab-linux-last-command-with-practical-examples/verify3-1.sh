#!/bin/bash
if ! last labex | grep -q 'labex'; then
  exit 1
fi