# Creating an ext2 File System on a Partition

In this step, you will learn how to create an ext2 file system on a partition using the `mkfs.ext2` command.

First, let's create a new partition on the virtual disk. You can use the `fdisk` command to create a new partition:

```
sudo fdisk /dev/sdb
```

Follow the prompts to create a new partition. Once the partition is created, you can use the `mkfs.ext2` command to format it with the ext2 file system:

```
sudo mkfs.ext2 /dev/sdb1
```

This will create an ext2 file system on the `/dev/sdb1` partition. You can customize the file system parameters by using additional options with the `mkfs.ext2` command. For example, you can set the block size, the number of inodes, and the file system label.

Example output:

```
mke2fs 1.46.5 (30-Dec-2021)
Creating filesystem with 2621440 1k-blocks and 655360 inodes
Filesystem UUID: 5e7c1c2f-0c7a-4f3e-b9d6-a9d4d5e8b7a0
Superblock backups stored on blocks:
        32768, 98304, 163840, 229376, 294912, 819200, 884736, 1605632

Allocating group tables: done
Writing inode tables: done
Creating journal (16384 blocks): done
Writing superblocks and filesystem accounting information: done
```

Now, you can mount the ext2 file system to a directory and start using it.
