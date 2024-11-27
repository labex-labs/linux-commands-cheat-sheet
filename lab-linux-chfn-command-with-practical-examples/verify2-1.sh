#!/bin/bash
if ! sudo chfn -f | grep -q "John Doe"; then
  exit 1
fi
if ! sudo chfn -f | grep -q "Main Office"; then
  exit 1
fi
if ! sudo chfn -f | grep -q "555-1234"; then
  exit 1
fi
if ! sudo chfn -f | grep -q "555-5678"; then
  exit 1
fi