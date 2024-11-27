# Delete and Resize Partitions with the fdisk Command

In this step, you will learn how to delete and resize partitions using the `fdisk` command.

First, let's list the current partitions on the `/dev/sda` device:

```
$ sudo fdisk -l /dev/sda
Disk /dev/sda: 20 GiB, 21474836480 bytes, 41943040 sectors
Disk model: Virtual disk
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0x00000000

Device     Boot Start       End   Sectors   Size Id Type
/dev/sda1        2048  41943039  41940992    20G 83 Linux
/dev/sda2    41943040  61071359  19128320    10G 83 Linux
```

Now, let's delete the `/dev/sda2` partition:

```
$ sudo fdisk /dev/sda
Welcome to fdisk (util-linux 2.34).
Changes will remain in memory only, until you decide to write them.
Be careful before using the write command.

Command (m for help): d
Partition number (1,2, default 2): 2

Partition 2 has been deleted.

Command (m for help): w
The partition table has been altered.
Calling ioctl() to re-read partition table.
Syncing disks.
```

In this example, we:

1. Entered the `fdisk` interactive mode by running `sudo fdisk /dev/sda`.
2. Chose to delete a partition by pressing `d`.
3. Specified the partition number `2` to delete the `/dev/sda2` partition.
4. Wrote the changes to the disk by pressing `w`.

Now, let's resize the remaining `/dev/sda1` partition to use the entire disk:

```
$ sudo fdisk /dev/sda
Welcome to fdisk (util-linux 2.34).
Changes will remain in memory only, until you decide to write them.
Be careful before using the write command.

Command (m for help): d
Partition number (1,2, default 1): 1

Partition 1 has been deleted.

Command (m for help): n
Partition type
   p   primary (0 primary, 0 extended, 4 free)
   e   extended (container for logical partitions)
Select (default p): p
Partition number (1-4, default 1): 1
First sector (2048-41943039, default 2048):
Last sector, +/-sectors or +/-size{K,M,G,T,P} (2048-41943039, default 41943039):

Created a new partition 1 of type 'Linux' and of size 20 GiB.

Command (m for help): w
The partition table has been altered.
Calling ioctl() to re-read partition table.
Syncing disks.
```

In this example, we:

1. Deleted the `/dev/sda1` partition by pressing `d` and entering `1` as the partition number.
2. Created a new primary partition (`p`) by pressing `n`.
3. Accepted the default partition number `1`.
4. Accepted the default first sector `2048`.
5. Accepted the default last sector `41943039` to use the entire 20 GB disk.
6. Wrote the changes to the disk by pressing `w`.

Example output:

```
$ sudo fdisk -l /dev/sda
Disk /dev/sda: 20 GiB, 21474836480 bytes, 41943040 sectors
Disk model: Virtual disk
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0x00000000

Device     Boot Start       End   Sectors   Size Id Type
/dev/sda1        2048  41943039  41940992    20G 83 Linux
```

As you can see, the `/dev/sda1` partition now takes up the entire 20 GB disk.
