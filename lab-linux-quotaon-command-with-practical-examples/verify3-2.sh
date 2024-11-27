#!/bin/bash
if sudo edquota labex && sudo quota -v labex && sudo quota -l labex; then
  exit 0
else
  exit 1
fi