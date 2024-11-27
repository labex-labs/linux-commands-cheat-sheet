#!/bin/bash
sudo useradd -m testuser
sudo su - testuser
if ! who | grep -q "testuser"; then
  exit 1
fi
sudo userdel -r testuser