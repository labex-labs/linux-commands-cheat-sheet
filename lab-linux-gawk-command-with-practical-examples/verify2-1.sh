#!/bin/bash
ages=$(gawk -F, '{print $2}' ~/project/data.txt | grep -v Age)
if [[ "$ages" != "25\n30\n35" ]]; then
  exit 1
fi