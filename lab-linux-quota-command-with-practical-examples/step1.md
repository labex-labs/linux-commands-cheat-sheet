# Understand the Concept of Disk Quota

In this step, we will explore the concept of disk quota in Linux. Disk quota is a system that allows system administrators to set limits on the amount of disk space that a user or group can consume on a file system.

To understand the concept of disk quota, let's first check the current disk usage on the system:

```bash
df -h
```

Example output:

```
Filesystem      Size  Used Avail Use% Mounted on
overlay         39G   15G   22G  41% /
tmpfs           64M     0   64M   0% /dev
tmpfs           3.9G     0  3.9G   0% /sys/fs/cgroup
shm             64M     0   64M   0% /dev/shm
/dev/sda1       39G   15G   22G  41% /
tmpfs           3.9G     0  3.9G   0% /run
tmpfs           5.0M     0  5.0M   0% /run/lock
tmpfs           3.9G     0  3.9G   0% /sys/fs/cgroup
```

As you can see, the file system has a total capacity of 39GB, with 15GB used and 22GB available. This is the overall disk usage on the system.

Now, let's say we want to limit the disk space usage for a specific user. This is where disk quota comes into play. Disk quota allows us to set a limit on the amount of disk space that a user or group can consume.

The key concepts of disk quota are:

1. **Soft Limit**: The soft limit is the maximum amount of disk space that a user can consume before receiving a warning. If the user exceeds the soft limit, they will be able to continue using the file system, but they will receive periodic warnings.

2. **Hard Limit**: The hard limit is the absolute maximum amount of disk space that a user can consume. If a user reaches the hard limit, they will not be able to allocate any more disk space, and any further attempts to do so will fail.

3. **Inodes**: In addition to limiting the amount of disk space, disk quota can also limit the number of files (inodes) that a user can create. This is useful for preventing users from creating an excessive number of small files, which can also consume a significant amount of disk space.

By understanding these concepts, you will be able to effectively manage disk space usage on your Linux system using the `quota` command, which we will explore in the next step.
