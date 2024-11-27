#!/bin/bash
# Check if the disk quota usage for quota_user is reported correctly
sudo -u quota_user quota | grep -q "Disk quotas for user quota_user"
if [ $? -ne 0 ]; then
  echo "Error: Disk quota usage for quota_user is not reported correctly."
  exit 1
fi

# Check if the disk quota soft limit for quota_user was increased to 1GB
sudo repquota / | grep -q "quota_user.*1G.*2G"
if [ $? -ne 0 ]; then
  echo "Error: Disk quota soft limit for quota_user was not increased to 1GB."
  exit 1
fi

echo "Disk quota monitoring and management is working as expected."
exit 0