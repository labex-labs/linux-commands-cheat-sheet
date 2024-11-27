# Monitor and Manage Disk Quota Usage

In this final step, we will learn how to monitor and manage disk quota usage on the Linux system.

First, let's check the current disk quota usage for the `quota_user`:

```bash
sudo repquota /
```

Example output:

```
*** Report for user quotas on device /
Block grace time: 7days; Inode grace time: 7days
                        Block limits                File limits
User            used    soft    hard  grace    used  soft  hard  grace
----------------------------------------------------------------------
root       --   15360        0       0              1     0     0
quota_user     600M   500M     1G               0     0     0
```

As you can see, the `quota_user` is currently using 600MB of disk space, which exceeds the soft limit of 500MB.

To monitor the disk quota usage, we can use the `quota` command:

```bash
sudo -u quota_user quota
```

Example output:

```
Disk quotas for user quota_user (uid 1001):
  Filesystem  blocks   quota   limit   grace   files   quota   limit   grace
  /           614400  512000  1048576 [EXCEEDED]       0       0       0
```

This command shows the current disk usage, soft limit, and hard limit for the `quota_user` on the root file system (`/`).

If the user exceeds the soft limit, they will receive periodic warning messages. To manage the disk quota usage, we can either:

1. Increase the soft and/or hard limits using the `setquota` command, as we did in the previous step.
2. Ask the user to delete some files to reduce their disk usage.

Let's try increasing the soft limit for the `quota_user`:

```bash
sudo setquota -u quota_user 1G 2G 0 0 /
```

This command sets the soft limit to 1GB and the hard limit to 2GB for the `quota_user` on the root file system (`/`).

Now, let's verify the updated quota settings:

```bash
sudo repquota /
```

Example output:

```
*** Report for user quotas on device /
Block grace time: 7days; Inode grace time: 7days
                        Block limits                File limits
User            used    soft    hard  grace    used  soft  hard  grace
----------------------------------------------------------------------
root       --   15360        0       0              1     0     0
quota_user     600M     1G     2G               0     0     0
```

As you can see, the soft limit for the `quota_user` has been increased to 1GB, and the hard limit has been increased to 2GB.
