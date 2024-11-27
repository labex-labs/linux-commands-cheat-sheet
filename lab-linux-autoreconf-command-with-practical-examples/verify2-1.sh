#!/bin/bash
if [ -x "$(command -v autoconf)" ] && [ -x "$(command -v automake)" ] && [ -x "$(command -v libtool)" ]; then
  exit 0
else
  echo "One or more required Autotools packages (autoconf, automake, libtool) are not installed. Please install them and try again."
  exit 1
fi