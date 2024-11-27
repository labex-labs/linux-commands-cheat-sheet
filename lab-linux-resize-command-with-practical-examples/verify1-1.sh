#!/bin/bash
if ! resize --help | grep -q "resize \[options\] size device"; then
  exit 1
fi