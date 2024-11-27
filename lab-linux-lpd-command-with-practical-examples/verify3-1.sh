#!/bin/bash
if sudo lpq myprinter | grep -q "test_print.txt"; then
  exit 0
else
  echo "The 'test_print.txt' file was not submitted to the print queue."
  exit 1
fi