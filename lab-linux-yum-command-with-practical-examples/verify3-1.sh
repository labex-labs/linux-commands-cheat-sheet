#!/bin/bash
if rpm -q tree > /dev/null; then
  exit 1
fi