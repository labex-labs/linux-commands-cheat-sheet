# Enabling Disk Quotas on a Linux File System

In this step, you will learn how to enable disk quotas on a Linux file system. After creating the necessary quota files in the previous step, you now need to assign quotas to individual users or groups.

First, let's enable quotas for the `labex` user:

```bash
sudo edquota -u labex
```

This command will open the quota editor, where you can set the soft and hard limits for the user. The soft limit is the threshold at which the user will receive a warning, and the hard limit is the maximum amount of disk space or number of files the user can consume.

For example, you can set the following quota limits for the `labex` user:

```
Disk quotas for user labex (uid 1000):
  Filesystem   blocks   soft   hard   inodes   soft   hard
  /           1000000  950000 1000000    100000  95000  100000
```

In this example, the `labex` user has a soft limit of 950,000 blocks (approximately 950 MB) and a hard limit of 1,000,000 blocks (approximately 1 GB) for disk space usage. The soft and hard limits for the number of inodes (files) are set to 95,000 and 100,000, respectively.

After setting the quotas, you need to enable them on the file system:

```bash
sudo quotaon -a
```

This command enables quotas for all file systems that have the `usrquota` and `grpquota` options set in the `/etc/fstab` file.
