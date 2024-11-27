#!/bin/bash

# Create the quota file system
sudo mkdir /quota_fs
sudo mount -t ext4 -o usrquota,grpquota /quota_fs

# Enable user and group quotas
sudo quotacheck -cug /quota_fs
sudo quotaon -u /quota_fs
sudo quotaon -g /quota_fs