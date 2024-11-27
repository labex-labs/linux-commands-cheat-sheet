#!/bin/bash
if ! sudo groupmod --help | grep -q "Usage: groupmod"; then
  exit 1
fi