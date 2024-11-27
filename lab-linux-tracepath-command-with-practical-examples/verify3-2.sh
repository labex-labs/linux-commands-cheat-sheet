#!/bin/bash
if ! sudo tracepath 8.8.8.8 | grep -q "Resume: pmtu"; then
  exit 1
fi