#!/bin/bash
if ! [[ $(expr 7 \< 10) == "1" ]]; then
  exit 1
fi
if ! [[ $(expr 5 \> 3) == "1" ]]; then
  exit 1
fi
if ! [[ $(expr 4 = 4) == "1" ]]; then
  exit 1
fi
if ! [[ $(expr 8 \!= 5) == "1" ]]; then
  exit 1
fi
if ! [[ $(expr 5 -eq 5 -a 7 -gt 3) == "1" ]]; then
  exit 1
fi
if ! [[ $(expr 4 -ne 5 -o 8 -lt 10) == "1" ]]; then
  exit 1
fi