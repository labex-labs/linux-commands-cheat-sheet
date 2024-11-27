# Creating a Filesystem on a Partition

In this step, we will learn how to create a file system on a partition using the `mkfs` command.

First, let's create a partition on a storage device. In this example, we'll use a USB drive. Plug in a USB drive and run the following command to list the available block devices:

```bash
sudo fdisk -l
```

Example output:

```
Disk /dev/sdb: 14.9 GiB, 16008609792 bytes, 31266176 sectors
Disk model: USB Drive
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0x9a3d4d3b

Device     Boot Start      End  Sectors  Size Id Type
/dev/sdb1        2048 31266175 31264128 14.9G 83 Linux
```

In the output, you can see that the USB drive is `/dev/sdb` and it has one partition `/dev/sdb1`.

Now, let's create an ext4 file system on the partition:

```bash
sudo mkfs -t ext4 /dev/sdb1
```

Example output:

```
mke2fs 1.46.5 (30-Dec-2021)
Creating filesystem with 3908016 4k blocks and 976768 inodes
Filesystem UUID: 5d0d4d5e-d4d2-4d2d-9d2d-d4d2d4d2d4d2
Superblock backups stored on blocks:
    32768, 98304, 163840, 229376, 294912, 819200, 884736, 1605632, 2654208

Allocating group tables: done
Writing inode tables: done
Creating journal (16384 blocks): done
Writing superblocks and filesystem accounting information: done
```

This creates an ext4 file system on the `/dev/sdb1` partition.

In the next step, we will learn how to format a USB drive with the `mkfs` command.
