#!/bin/bash
if [ "$(basename files/docs/report.txt)" == "report.txt" ] && [ "$(basename files/images/photo.jpg)" == "photo.jpg" ]; then
  exit 0
else
  echo "The basename command did not extract the filenames correctly."
  exit 1
fi