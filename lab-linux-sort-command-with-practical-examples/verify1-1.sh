#!/bin/bash
if [ "$(cat data.txt | sort)" != "$(echo -e 'apple\nbanana\norange\npear')" ]; then
  exit 1
fi
exit 0