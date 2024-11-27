# Retrieve Disk Quota Information for a Specific User

In this step, we will learn how to retrieve disk quota information for a specific user using the `repquota` command.

First, let's create a new user named `testuser` and set a disk quota limit for them:

```bash
sudo useradd testuser
sudo setquota -u testuser 100M 200M 0 0 /
```

This command sets a soft limit of 100MB and a hard limit of 200MB for the `testuser` user on the root filesystem (`/`).

Now, let's check the disk quota information for the `testuser` user:

```bash
sudo repquota -u testuser
```

Example output:

```
User            used    soft    hard  grace
---------------------------------------------
testuser      0       100000   200000
```

The output shows that the `testuser` user currently has a soft limit of 100MB and a hard limit of 200MB set for their disk quota.

To display the disk quota information in a more verbose format, we can use the `-v` option:

```bash
sudo repquota -uv testuser
```

Example output:

```
*** Report for user quotas on device /
Block grace time: [7 days]
Inode grace time: [7 days]
                        Blocks                Inodes
User            used    soft    hard  grace   used  soft  hard  grace
----------------------------------------------------------------------
testuser      0        100000  200000         0     0     0
```

This output provides more detailed information about the user's disk quota, including the grace period for soft limits.
