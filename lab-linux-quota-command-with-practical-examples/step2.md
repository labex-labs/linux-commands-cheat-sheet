# Set Disk Quota for a User

In this step, we will learn how to set disk quota for a user on the Linux system.

First, let's create a new user named `quota_user` and add them to the `sudo` group:

```bash
sudo useradd -m quota_user
sudo usermod -aG sudo quota_user
```

Now, we need to enable disk quota for the file system where the user's home directory is located. In this case, it's the root file system (`/`):

```bash
sudo quotacheck -cug /
sudo quotaon /
```

The `quotacheck` command scans a file system, builds a table of the current disk usage, and enables quota accounting. The `quotaon` command then turns on quota enforcement for the file system.

Next, we'll set the soft and hard limits for the `quota_user`:

```bash
sudo setquota -u quota_user 500M 1G 0 0 /
```

This command sets the soft limit to 500MB and the hard limit to 1GB for the `quota_user` on the root file system (`/`). The last two 0 values are for the inode (file count) soft and hard limits, which we're not setting in this example.

To verify the quota settings for the `quota_user`, we can use the `repquota` command:

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
quota_user     0     500M     1G               0     0     0
```

As you can see, the `quota_user` has a soft limit of 500MB and a hard limit of 1GB for disk space usage.

Now, let's test the quota by logging in as the `quota_user` and trying to create a file larger than the soft limit:

```bash
sudo -u quota_user touch ~/large_file.txt
sudo -u quota_user dd if=/dev/zero of=~/large_file.txt bs=1M count=600
```

The first command creates an empty file named `large_file.txt`, and the second command fills the file with 600MB of data. Since this exceeds the soft limit of 500MB, the user should receive a warning message.
