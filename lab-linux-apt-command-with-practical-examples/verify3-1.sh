#!/bin/bash
if ! sudo apt search vim | grep -q 'vim/jammy'; then
  exit 1
fi
exit 0