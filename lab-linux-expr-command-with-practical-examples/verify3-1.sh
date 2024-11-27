#!/bin/bash
if ! [[ $(expr "Linux is fun" : '.*is\(.*\)') == " fun" ]]; then
  exit 1
fi
if ! [[ $(expr "hello" : '.\{5\}') == "5" ]]; then
  exit 1
fi