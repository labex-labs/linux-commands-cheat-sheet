#!/bin/bash
if ! man talk | grep -q "talk - talk to another user"; then
  exit 1
fi