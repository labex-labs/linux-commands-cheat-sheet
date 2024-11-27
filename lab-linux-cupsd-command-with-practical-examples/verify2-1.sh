#!/bin/bash
if sudo cupsd -t | grep -q "MyPrinter"; then
  exit 0
else
  echo "The 'MyPrinter' printer was not created successfully."
  exit 1
fi