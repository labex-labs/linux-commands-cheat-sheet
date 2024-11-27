# Resize and Delete Partitions with the mpartition Command

In this step, we will learn how to resize and delete partitions using the `mpartition` command.

First, let's resize the partition `/dev/sda2` that we created in the previous step. Run the following command:

```
sudo mpartition -r /dev/sda2
```

This will open the partition editor, where you can resize the partition. Follow the on-screen instructions to resize the partition.

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

Command (m for help): r
Partition number (1,2, default 2): 2
Partition type
   p   primary (1 primary, 0 extended, 3 free)
   e   extended (container for logical partitions)
Select (default p):
First sector (2048-41943039, default 2048):
Last sector, +/-sectors or +/-size{K,M,G,T,P} (2048-41943039, default 41943039): +10G

Partition 2 has been resized.

Command (m for help): w
The partition table has been altered.
Calling ioctl() to re-read partition table.
Syncing disks.
```

Now, let's delete the partition `/dev/sda2`:

```
sudo mpartition -d /dev/sda2
```

This will delete the partition `/dev/sda2` from the device.

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

Command (m for help): d
Partition number (1,2, default 2): 2

Partition 2 has been deleted.

Command (m for help): w
The partition table has been altered.
Calling ioctl() to re-read partition table.
Syncing disks.
```

After deleting the partition, you can verify the changes by running the `mpartition -l /dev/sda` command again.
