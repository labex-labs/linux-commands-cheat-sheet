#!/bin/bash
if ! pacman -Ss vim | grep -q "vim"; then
  exit 1
fi