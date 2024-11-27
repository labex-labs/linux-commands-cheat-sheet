#!/bin/bash
if ! pstree -H $$ | grep -q "bash"; then
  exit 1
fi