# Formatting an ext2 File System with Custom Parameters

In this step, you will learn how to format an ext2 file system with custom parameters using the `mkfs.ext2` command.

The `mkfs.ext2` command provides several options to customize the file system. Here are some of the common options:

- `-b` or `--block-size`: Specifies the block size of the file system. The default is 1024 bytes.
- `-i` or `--inode-ratio`: Specifies the ratio of inodes to blocks. The default is 16384.
- `-L` or `--label`: Specifies the file system label.
- `-m` or `--reserved-blocks-percentage`: Specifies the percentage of the file system blocks that are reserved for use by the root user. The default is 5%.

Let's create an ext2 file system with a block size of 4096 bytes, an inode ratio of 8192, and a file system label of "my_ext2_fs":

```
sudo mkfs.ext2 -b 4096 -i 8192 -L my_ext2_fs /dev/sdb1
```

Example output:

```
mke2fs 1.46.5 (30-Dec-2021)
Creating filesystem with 2621440 4k blocks and 655360 inodes
Filesystem UUID: 5e7c1c2f-0c7a-4f3e-b9d6-a9d4d5e8b7a0
Superblock backups stored on blocks:
        32768, 98304, 163840, 229376, 294912, 819200, 884736, 1605632

Allocating group tables: done
Writing inode tables: done
Creating journal (16384 blocks): done
Writing superblocks and filesystem accounting information: done
```

You can verify the file system parameters using the `tune2fs` command:

```
sudo tune2fs -l /dev/sdb1
```

This will display the file system parameters, including the block size, inode ratio, and file system label.
