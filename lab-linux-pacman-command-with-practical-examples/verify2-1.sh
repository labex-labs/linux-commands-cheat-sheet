#!/bin/bash
if ! pacman -Q htop &> /dev/null; then
  exit 1
fi