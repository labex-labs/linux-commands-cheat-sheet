#!/bin/bash
num_hops=$(sudo tracepath google.com | wc -l)
if [ $num_hops -lt 5 ]; then
  exit 1
fi