#!/bin/bash
if ! sudo rpm -qi bash | grep -q "Version     : 5.1.16"; then
  exit 1
fi