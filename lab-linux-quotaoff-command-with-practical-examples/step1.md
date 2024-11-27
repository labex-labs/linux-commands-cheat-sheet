# Introduction to Disk Quotas in Linux

In this step, you will learn about disk quotas in Linux, which are a mechanism to limit the amount of disk space and the number of files that a user or a group can consume on a file system.

Disk quotas are useful in scenarios where you have limited storage space and need to ensure that individual users or groups do not consume an excessive amount of disk space, which could potentially impact other users or the overall system performance.

To enable disk quotas, you need to first create quota files on the file system and then assign quotas to individual users or groups. Let's start by creating the quota files:

```bash
sudo quotacheck -cug /
```

This command creates the necessary quota files (`aquota.user` and `aquota.group`) in the root directory (`/`). The `-c` option creates the quota files, `-u` enables user quotas, and `-g` enables group quotas.

Next, you need to enable the quota system by editing the `/etc/fstab` file and adding the `usrquota` and `grpquota` options to the file system entry. For example:

```
/dev/sda1 / ext4 defaults,usrquota,grpquota 0 1
```

After making this change, you need to remount the file system for the quota options to take effect:

```bash
sudo mount -o remount /
```

Now, the disk quota system is enabled, and you can start managing quotas for individual users and groups.
