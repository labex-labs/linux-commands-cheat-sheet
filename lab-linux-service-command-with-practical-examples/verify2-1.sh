#!/bin/bash
if ! sudo service apache2 status | grep -q "Apache2 is running"; then
  exit 1
fi
if ! sudo service apache2 stop | grep -q "Stopping Apache httpd web server"; then
  exit 1
fi
if ! sudo service apache2 start | grep -q "Starting Apache httpd web server"; then
  exit 1
fi