#!/bin/bash
if [[ ! -d "/srv/tftp" ]]; then
  exit 1
fi
if [[ "$(stat -c '%U' /srv/tftp)" != "labex" ]]; then
  exit 1
fi
if [[ "$(systemctl is-active tftpd-hpa)" != "active" ]]; then
  exit 1
fi