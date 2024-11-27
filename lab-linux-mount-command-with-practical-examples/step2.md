# Mount a Local File System

In this step, we will learn how to mount a local file system on your Linux system.

First, let's create a new directory to use as the mount point:

```
sudo mkdir /mnt/local
```

Now, let's mount an existing local file system to the mount point. For this example, we'll use the `/dev/sdb1` device and mount it as an `ext4` file system:

```
sudo mount -t ext4 /dev/sdb1 /mnt/local
```

Example output:

```
No output, as the mount operation was successful.
```

To verify that the file system is mounted correctly, you can use the `mount` command:

```
mount | grep /mnt/local
```

Example output:

```
/dev/sdb1 on /mnt/local type ext4 (rw,relatime)
```

This output shows that the `/dev/sdb1` device is mounted on the `/mnt/local` directory as an `ext4` file system.
