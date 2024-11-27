# Resize a Partition Using the resize Command

In this step, we will learn how to resize a partition using the `resize` command.

First, let's create a new partition on the virtual disk in our Docker container:

```
sudo fdisk /dev/sdb
# Create a new partition, e.g., /dev/sdb1
```

Example output:

```
Welcome to fdisk (util-linux 2.37.2).
Changes will remain in memory only, until you decide to write them.
Be careful before using the write command.

Command (m for help): n
Partition type
   p   primary (0 primary, 0 extended, 4 free)
   e   extended (container for logical partitions)
Select (default p): p
Partition number (1-4, default 1): 1
First sector (2048-20971519, default 2048):
Last sector, +/-sectors or +/-size{K,M,G,T,P} (2048-20971519, default 20971519): +10G

Created a new partition 1 of type 'Linux' and of size 10 GiB.

Command (m for help): w
The partition table has been altered.
Calling ioctl() to re-read partition table.
Syncing disks.
```

Now, let's resize the newly created partition `/dev/sdb1` to 15GB:

```
sudo resize 15G /dev/sdb1
```

Example output:

```
resize: /dev/sdb1 resized
```

To verify the new size of the partition, we can use the `fdisk` command:

```
sudo fdisk -l /dev/sdb
```

Example output:

```
Disk /dev/sdb: 20 GiB, 21474836480 bytes, 41943040 sectors
Disk model: Virtual disk
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0x78b0c0b9

Device     Boot Start      End  Sectors  Size Id Type
/dev/sdb1        2048 31457279 31455232   15G 83 Linux
```

As you can see, the size of the `/dev/sdb1` partition has been successfully resized to 15GB.
