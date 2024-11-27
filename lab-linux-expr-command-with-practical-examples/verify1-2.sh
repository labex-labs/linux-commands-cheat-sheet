#!/bin/bash
if ! [[ $(expr "Hello" : '\(.*\)') == "Hello" ]]; then
  exit 1
fi
if ! [[ $(expr "Linux is fun" : '.*is\(.*\)') == " fun" ]]; then
  exit 1
fi
if ! [[ $(expr "www.example.com" : '.*\(.*\)\..*') == "example" ]]; then
  exit 1
fi