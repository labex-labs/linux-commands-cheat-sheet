# Create an Ext4 Filesystem on a Partition

In this step, we will create an Ext4 filesystem on a partition using the `mke2fs` command.

First, let's create a new partition on the virtual disk in our Docker container. We'll use the `fdisk` command for this:

```bash
sudo fdisk /dev/sdb
```

Follow the prompts to create a new partition. For example, you can create a primary partition occupying the entire disk.

Once the partition is created, we can use the `mke2fs` command to create an Ext4 filesystem on it:

```bash
sudo mke2fs -t ext4 /dev/sdb1
```

This will create an Ext4 filesystem on the `/dev/sdb1` partition.

Example output:

```
mke2fs 1.46.5 (30-Dec-2021)
Creating filesystem with 5242880 4k blocks and 1310720 inodes
Filesystem UUID: 7d9c1a3e-b7a4-4a4e-8a1a-2d9f2d1d9d1d
Superblock backups stored on blocks:
        32768, 98304, 163840, 229376, 294912, 819200, 884736, 1605632, 2654208,
        4096000

Allocating group tables: done
Writing inode tables: done
Creating journal (32768 blocks): done
Writing superblocks and filesystem accounting information: done
```

The key options used in this command are:

- `-t ext4`: Specifies the Ext4 filesystem type
- `/dev/sdb1`: The partition where the filesystem will be created

Now the Ext4 filesystem has been created on the partition, and you can use it for your storage needs.
