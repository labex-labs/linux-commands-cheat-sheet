# Unmount a Mounted File System

In this step, we will learn how to unmount a mounted file system using the `umount` command.

First, let's create a new directory and mount a file system to it:

```bash
sudo mkdir /mnt/example2
sudo mount /dev/sdc1 /mnt/example2
```

Now, let's try to unmount the file system using the `umount` command:

```bash
sudo umount /mnt/example2
```

Example output:

```

```

If the file system is not in use, the `umount` command will successfully unmount the file system.

However, if the file system is in use, the `umount` command will fail with an error message. In such cases, you can use the `-f` (force) option to forcefully unmount the file system:

```bash
sudo umount -f /mnt/example2
```

Example output:

```

```

The `-f` option forces the unmount operation, even if the file system is busy.
