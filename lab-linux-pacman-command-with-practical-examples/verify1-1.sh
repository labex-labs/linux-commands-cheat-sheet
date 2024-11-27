#!/bin/bash
if [[ $(pacman --version | grep -o -E '[0-9]+\.[0-9]+\.[0-9]+') != "6.0.2" ]]; then
  exit 1
fi