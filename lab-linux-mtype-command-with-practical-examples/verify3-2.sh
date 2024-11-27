#!/bin/bash
if mtype binary_file.dat | grep -q "\200\200\200\200\200\200\200\200\200\200"; then
  exit 0
else
  exit 1
fi