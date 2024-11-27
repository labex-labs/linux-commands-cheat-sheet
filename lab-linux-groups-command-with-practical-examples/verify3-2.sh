#!/bin/bash
if ! groups labex | grep -q 'testers'; then
  exit 1
fi