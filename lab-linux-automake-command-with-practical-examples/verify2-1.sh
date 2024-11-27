#!/bin/bash
if [ ! -f ~/project/automate-demo/configure.ac ]; then
  exit 1
fi
if [ ! -f ~/project/automate-demo/Makefile.am ]; then
  exit 1
fi