#!/bin/bash
if [[ $(fc-list | grep "DejaVuSans") ]]; then
  exit 0
else
  exit 1
fi