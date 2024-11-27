#!/bin/bash
if ! sudo tracepath google.com | grep -q "Resume: pmtu"; then
  exit 1
fi