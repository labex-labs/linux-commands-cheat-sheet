# Introduction to Disk Quota Management

In this step, we will explore the concept of disk quota management in Linux. Disk quotas are a system that allows system administrators to limit the amount of disk space that a user or group can consume on a file system.

First, let's check the current disk usage on the file system:

```bash
df -h
```

Example output:

```
Filesystem      Size  Used Avail Use% Mounted on
overlay         39G   16G   22G  42% /
tmpfs           64M     0   64M   0% /dev
tmpfs           16G     0   16G   0% /sys/fs/cgroup
shm             64M     0   64M   0% /dev/shm
/dev/sda1       39G   16G   22G  42% /
tmpfs           16G     0   16G   0% /run
tmpfs           16G     0   16G   0% /var/run
tmpfs           16G     0   16G   0% /var/lib/docker
overlay         39G   16G   22G  42% /var/lib/docker/overlay2
tmpfs           16G     0   16G   0% /sys/fs/cgroup
```

The output shows the current disk usage on the file system. In this example, the root file system (`/`) is using 42% of the available disk space.

Next, let's enable disk quota management on the root file system:

```bash
sudo apt-get update
sudo apt-get install -y quota
sudo quotacheck -cug /
sudo quotaon -a
```

The `quotacheck` command scans a file system, builds a table of the current disk usage, and stores it in the file system's kernel memory. The `quotaon` command enables disk quota management on the specified file system.

Now, let's verify that disk quota management is enabled:

```bash
sudo quotaon -a
```

Example output:

```
/: quotas turned on
```

The output confirms that disk quota management is enabled on the root file system (`/`).
