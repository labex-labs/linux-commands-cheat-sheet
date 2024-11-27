# Create a New Partition Using the fdisk Command

In this step, you will learn how to create a new partition on your Linux system using the `fdisk` command.

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

Device     Boot Start      End  Sectors  Size Id Type
/dev/sda1        2048 41943039 41940992   20G 83 Linux
```

As you can see, there is currently one partition, `/dev/sda1`, which takes up the entire 20 GB disk.

Now, let's create a new partition using the `fdisk` command:

```
$ sudo fdisk /dev/sda
Welcome to fdisk (util-linux 2.34).
Changes will remain in memory only, until you decide to write them.
Be careful before using the write command.

Command (m for help): n
Partition type
   p   primary (1 primary, 0 extended, 3 free)
   e   extended (container for logical partitions)
Select (default p): p
Partition number (2-4, default 2):
First sector (2048-41943039, default 2048):
Last sector, +/-sectors or +/-size{K,M,G,T,P} (2048-41943039, default 41943039): +10G

Created a new partition 2 of type 'Linux' and of size 10 GiB.

Command (m for help): w
The partition table has been altered.
Calling ioctl() to re-read partition table.
Syncing disks.
```

In this example, we:

1. Entered the `fdisk` interactive mode by running `sudo fdisk /dev/sda`.
2. Chose to create a new partition by pressing `n`.
3. Selected a primary partition (`p`) as the partition type.
4. Accepted the default partition number `2`.
5. Accepted the default first sector `2048`.
6. Specified the last sector as `+10G` to create a 10 GB partition.
7. Wrote the changes to the disk by pressing `w`.

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
/dev/sda2    41943040  61071359  19128320    10G 83 Linux
```

As you can see, the new partition `/dev/sda2` has been created with a size of 10 GB.
