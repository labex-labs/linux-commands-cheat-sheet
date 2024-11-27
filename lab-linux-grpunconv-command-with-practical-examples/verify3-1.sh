#!/bin/bash
# Test case 1: /etc/group is read-only
sudo chmod 444 /etc/group
if sudo grpunconv &> /dev/null; then
  echo "grpunconv command succeeded unexpectedly with read-only /etc/group"
  exit 1
fi
sudo chmod 644 /etc/group

# Test case 2: /etc/group is already in traditional format
sudo sh -c 'echo "testgroup2:x:1002:" >> /etc/group'
if ! sudo grpunconv &> /dev/null; then
  echo "grpunconv command failed unexpectedly with traditional /etc/group format"
  exit 1
fi
grep -q 'testgroup2' /etc/group
if [ $? -ne 0 ]; then
  echo "testgroup2 group was not found in /etc/group"
  exit 1
fi
echo "grpunconv command handled errors and edge cases successfully"
exit 0