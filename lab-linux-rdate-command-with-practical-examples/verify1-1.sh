#!/bin/bash
if ! sudo rdate -s time.nist.gov &> /dev/null; then
  exit 1
fi
if ! date | grep -q "$(sudo rdate -s time.nist.gov)"; then
  exit 1
fi
exit 0