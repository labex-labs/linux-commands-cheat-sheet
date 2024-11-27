#!/bin/bash
if ! dd --help | grep -q "bs="; then
  exit 1
fi
if ! dd --help | grep -q "count="; then
  exit 1
fi
if ! dd --help | grep -q "conv="; then
  exit 1
fi
if ! dd --help | grep -q "status="; then
  exit 1
fi