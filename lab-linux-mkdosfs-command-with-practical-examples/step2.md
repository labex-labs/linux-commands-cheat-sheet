# Creating a DOS Filesystem on a Partition

In this step, we will learn how to create a DOS filesystem on a partition using the `mkdosfs` command.

First, let's create a new partition on our system. We can use the `fdisk` command for this:

```bash
sudo fdisk /dev/sdb
```

Example output:

```
Welcome to fdisk (util-linux 2.38).
Changes will remain in memory only, until you decide to write them.
Be careful before using the write command.

Device does not contain a recognized partition table.
Created a new DOS disklabel with disk identifier 0x1d7d1d7d.

Command (m for help): n
Partition type
   p   primary (0 primary, 0 extended, 4 free)
   e   extended (container for logical partitions)
Select (default p): p
Partition number (1-4, default 1): 1
First sector (2048-20971519, default 2048):
Last sector, +/-sectors or +/-size{K,M,G,T,P} (2048-20971519, default 20971519):

Created a new partition 1 of type 'Linux' and of size 10 GiB.

Command (m for help): w
The partition table has been altered.
Calling ioctl() to re-read partition table.
Syncing disks.
```

In this example, we're creating a new primary partition on the `/dev/sdb` device.

Now, let's create a DOS filesystem on the new partition:

```bash
sudo mkdosfs -F 32 /dev/sdb1
```

Example output:

```
mkdosfs 4.2 (2021-01-31)
/dev/sdb1 has 20971520 sectors of 512 bytes.

Creating a FAT32 filesystem in the volume with 20971520 available sectors.
Creating boot sector...
Creating FAT table...
Reserving space for root directory...
Writing directory entries...
Writing FAT tables...
Writing root directory...
```

We've created a FAT32 filesystem on the `/dev/sdb1` partition.
