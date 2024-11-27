# Unmount a Mounted File System Forcefully

In this step, we will learn how to forcefully unmount a mounted file system using the `umount` command with the `-f` option.

First, let's create a new directory and mount a file system to it:

```bash
sudo mkdir /mnt/example3
sudo mount /dev/sdd1 /mnt/example3
```

Now, let's try to unmount the file system using the `umount` command:

```bash
sudo umount /mnt/example3
```

Example output:

```
umount: /mnt/example3: target is busy.
```

As you can see, the `umount` command failed to unmount the file system because it is in use.

In such cases, you can use the `-f` (force) option to forcefully unmount the file system:

```bash
sudo umount -f /mnt/example3
```

Example output:

```

```

The `-f` option forces the unmount operation, even if the file system is busy.
