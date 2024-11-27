# Create and Manage Partitions Using the mpartition Command

In this step, we will learn how to create and manage partitions using the `mpartition` command.

First, let's create a new partition on the `/dev/sda` device:

```
sudo mpartition -n /dev/sda
```

This will open the partition editor, where you can create a new partition. Follow the on-screen instructions to create a new partition.

Example output:

```
Welcome to mpartition! Version 2.34.
Disk /dev/sda: 20 GiB, 21474836480 bytes, 41943040 sectors
Disk model: Virtual disk
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0x00000000

Command (m for help): n
Partition type
   p   primary (1 primary, 0 extended, 3 free)
   e   extended (container for logical partitions)
Select (default p): p
Partition number (2-4, default 2):
First sector (2048-41943039, default 2048):
Last sector, +/-sectors or +/-size{K,M,G,T,P} (2048-41943039, default 41943039):

Created a new partition 2 of type 'Linux' and of size 20 GiB.

Command (m for help): w
The partition table has been altered.
Calling ioctl() to re-read partition table.
Syncing disks.
```

Now, let's list the partitions on the `/dev/sda` device:

```
sudo mpartition -l /dev/sda
```

Example output:

```
Disk /dev/sda: 20 GiB, 21474836480 bytes, 41943040 sectors
Disk model: Virtual disk
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0x00000000

Device     Boot Start     End Sectors  Size Id Type
/dev/sda1        2048 41943039 41940992   20G 83 Linux
/dev/sda2       2048 41943039 41940992   20G 83 Linux
```

In the example output, we can see that a new partition `/dev/sda2` has been created with a size of 20 GB.

You can also use the `mpartition` command to manage existing partitions, such as resizing or deleting them. Refer to the previous step for the available options and their usage.
