#!/bin/bash
if ! look app | grep -q l; then
  exit 1
fi
echo "Verification passed!"
exit 0