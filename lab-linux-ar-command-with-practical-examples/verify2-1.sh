#!/bin/bash
if [ ! -f ~/project/libhello.a ]; then
  exit 1
fi
if ! sudo ar t ~/project/libhello.a | grep -q "hello.o"; then
  exit 1
fi