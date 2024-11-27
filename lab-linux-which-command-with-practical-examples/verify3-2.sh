#!/bin/bash
if which -a python | grep "/usr/bin/python3" && \
   which -a python | grep "/usr/bin/python3.10" && \
   which -a python | grep "/usr/bin/python"; then
  exit 0
else
  exit 1
fi