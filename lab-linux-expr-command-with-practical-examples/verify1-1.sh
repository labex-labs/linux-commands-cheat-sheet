#!/bin/bash
if ! [[ $(expr 5 + 3) == "8" ]]; then
  exit 1
fi
if ! [[ $(expr 10 - 4) == "6" ]]; then
  exit 1
fi
if ! [[ $(expr 6 \* 7) == "42" ]]; then
  exit 1
fi
if ! [[ $(expr 15 / 3) == "5" ]]; then
  exit 1
fi
if ! [[ $(expr 17 % 5) == "2" ]]; then
  exit 1
fi