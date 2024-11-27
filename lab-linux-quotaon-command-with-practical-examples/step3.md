# Monitoring and Managing User Disk Quotas

In this final step, we will learn how to monitor and manage user disk quotas.

First, let's check the current disk quota usage for the `labex` user:

```bash
sudo repquota /data
```

Example output:

```
*** Report for user quotas on device /data
Block grace time: 7days; Inode grace time: 7days
                        Block limits                File limits
User            used    soft    hard  grace    used  soft  hard  grace
---------------------------------------------------------------------
labex        --      0     5000    6000            0      0      0
```

The `repquota` command displays the current disk quota usage for the specified file system. In this example, the `labex` user has used 0 blocks out of the 5000 block soft limit and 6000 block hard limit on the `/data` file system.

Now, let's simulate a scenario where the `labex` user exceeds their disk quota:

```bash
dd if=/dev/zero of=/data/bigfile.txt bs=1M count=6000
```

This command creates a 6000 MB file in the `/data` directory, which will exceed the `labex` user's disk quota.

Let's check the disk quota usage again:

```bash
sudo repquota /data
```

Example output:

```
*** Report for user quotas on device /data
Block grace time: 7days; Inode grace time: 7days
                        Block limits                File limits
User            used    soft    hard  grace    used  soft  hard  grace
---------------------------------------------------------------------
labex        *  6000    5000    6000  1day        0      0      0
```

The output shows that the `labex` user has exceeded their soft limit of 5000 blocks, and is now in a grace period of 1 day to reduce their disk usage.

To manage the user's disk quota, you can use the following commands:

```bash
sudo edquota labex  # Edit the user's disk quota limits
sudo quota -v labex # Display the user's current disk quota usage
sudo quota -l labex # Display the user's disk quota limits
```

The `edquota` command allows you to modify the user's disk quota limits, while the `quota` command allows you to view the user's current disk quota usage and limits.
