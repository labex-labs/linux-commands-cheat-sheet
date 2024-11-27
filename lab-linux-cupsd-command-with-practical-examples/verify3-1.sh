#!/bin/bash
if sudo cupsd -p MyPrinter -l | grep -q "Default paper size: a4" && \
   sudo cupsd -p MyPrinter -l | grep -q "Printer is paused"; then
  exit 0
else
  echo "The printer configuration was not updated successfully."
  exit 1
fi