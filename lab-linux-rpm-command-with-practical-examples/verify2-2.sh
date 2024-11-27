#!/bin/bash
if rpm -q htop > /dev/null; then
  exit 1
fi