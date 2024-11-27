#!/bin/bash
if ! tail -f sample.log | grep -q "Application started"; then
  exit 1
fi
if ! tail -n 10 sample.log | grep -q "Database connection failed"; then
  exit 1
fi