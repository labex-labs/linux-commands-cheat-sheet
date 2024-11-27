#!/bin/bash
if [[ $(fc-list | grep "my-font") ]]; then
  exit 0
else
  exit 1
fi