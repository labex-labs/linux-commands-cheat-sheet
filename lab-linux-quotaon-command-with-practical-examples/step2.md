# Enabling Disk Quota on a File System

In this step, we will learn how to enable disk quota on a specific file system.

First, let's create a new directory and mount it as a separate file system:

```bash
sudo mkdir /data
sudo mount -t tmpfs tmpfs /data
```

Now, let's enable disk quota management on the `/data` file system:

```bash
sudo quotacheck -cug /data
sudo quotaon /data
```

The `quotacheck` command scans the `/data` file system, builds a table of the current disk usage, and stores it in the file system's kernel memory. The `quotaon` command enables disk quota management on the `/data` file system.

Let's verify that disk quota management is enabled on the `/data` file system:

```bash
sudo quotaon -a
```

Example output:

```
/: quotas turned on
/data: quotas turned on
```

The output confirms that disk quota management is enabled on both the root file system (`/`) and the `/data` file system.

Next, let's set disk quota limits for a user. In this example, we'll use the `labex` user:

```bash
sudo edquota labex
```

This will open the quota editor, where you can set the soft and hard limits for the user's disk usage. For example:

```
Disk quotas for user labex (uid 1000):
  Filesystem  blocks  soft  hard  inodes  soft  hard
  /data         0       5000  6000    0      0     0
```

In this example, the soft limit for the `/data` file system is set to 5000 blocks, and the hard limit is set to 6000 blocks.
