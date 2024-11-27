#!/bin/bash
if ! pstree -a | grep -q "dockerd"; then
  exit 1
fi