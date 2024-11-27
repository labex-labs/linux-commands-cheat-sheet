#!/bin/bash
if ! [[ $(expr 12 + 5) == "17" ]]; then
  exit 1
fi
if ! [[ $(expr 20 - 8) == "12" ]]; then
  exit 1
fi
if ! [[ $(expr 6 \* 4) == "24" ]]; then
  exit 1
fi
if ! [[ $(expr 18 / 3) == "6" ]]; then
  exit 1
fi
if ! [[ $(expr 19 % 7) == "5" ]]; then
  exit 1
fi
if ! [[ $(expr \( 10 + 5 \) \* 3 / 2 + 1) == "26" ]]; then
  exit 1
fi