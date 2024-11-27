#!/bin/bash
if ! grep -q "sayHello()" ~/project/main.c; then
  exit 1
fi
if ! gcc -o main ~/project/main.c -L. -lhello; then
  exit 1
fi
if ! ./main | grep -q "Hello, from the static library!"; then
  exit 1
fi
if ! sudo ar t ~/project/libhello.a | grep -q "hello.o"; then
  exit 1
fi
if [ ! -f ~/project/hello.o ]; then
  exit 1
fi