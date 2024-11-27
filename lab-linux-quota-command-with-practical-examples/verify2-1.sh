#!/bin/bash
# Check if the quota_user was created and added to the sudo group
id quota_user &> /dev/null
if [ $? -ne 0 ]; then
  echo "Error: quota_user was not created or added to the sudo group."
  exit 1
fi

# Check if disk quota is enabled for the root file system
sudo quotaon -p / | grep -q "Disk quotas are turned on"
if [ $? -ne 0 ]; then
  echo "Error: Disk quota is not enabled for the root file system."
  exit 1
fi

# Check if the quota for quota_user is set correctly
sudo repquota / | grep -q "quota_user.*500M.*1G"
if [ $? -ne 0 ]; then
  echo "Error: Disk quota for quota_user is not set correctly."
  exit 1
fi

# Check if the quota_user can exceed the soft limit
sudo -u quota_user dd if=/dev/zero of=~/large_file.txt bs=1M count=600 2>&1 | grep -q "Disk quota exceeded"
if [ $? -ne 0 ]; then
  echo "Error: quota_user was able to exceed the soft limit."
  exit 1
fi

echo "Disk quota for quota_user is set up correctly."
exit 0