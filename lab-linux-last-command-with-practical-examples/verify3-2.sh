#!/bin/bash
if ! last labex pts/0 | grep -q 'labex.*pts/0'; then
  exit 1
fi