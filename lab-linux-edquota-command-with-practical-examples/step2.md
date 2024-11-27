# Enabling Disk Quota on a Linux Filesystem

In this step, we will learn how to enable disk quota on a Linux file system.

First, let's create a new directory for our file system and mount it:

```bash
sudo mkdir /quota_fs
sudo mount -t ext4 -o usrquota,grpquota /dev/vdb1 /quota_fs
```

The `usrquota` and `grpquota` options enable user and group quotas, respectively, on the file system.

Next, we need to create the necessary quota files:

```bash
sudo quotacheck -cum /quota_fs
```

This command creates the `aquota.user` and `aquota.group` files in the root of the file system, which are used to store the quota information.

Now, we need to enable the quota system:

```bash
sudo quotaon -a
```

This command enables the quota system for all file systems that have quota enabled.

To verify that the quota system is enabled, we can use the `repquota` command:

```bash
sudo repquota /quota_fs
```

Example output:

```
*** Report for user quotas on device /quota_fs
-----------------------------------------------------------------------------
User            used    soft    hard  grace
-----------------------------------------------------------------------------
root      --      0       0       0
labex     --      0       0       0
```

The output shows that the quota system is enabled, and there are no current quotas set for the `root` and `labex` users.

In the next step, we will learn how to manage user disk quotas using the `edquota` command.
