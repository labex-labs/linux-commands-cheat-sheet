# Partitioning a Disk with sfdisk

In this step, we will learn how to use the `sfdisk` command to partition a disk.

First, let's create a new virtual disk that we can use for this example. We'll create a 20 GB disk and attach it to our Ubuntu container:

```bash
sudo fallocate -l 20G /tmp/disk.img
sudo losetup /dev/loop0 /tmp/disk.img
```

Now, we can use `sfdisk` to create a new partition table on the `/dev/loop0` disk:

```bash
sudo sfdisk /dev/loop0 << EOF
label: dos
unit: sectors

/dev/loop0p1 : start=2048, size=20971520, type=83
EOF
```

This command creates a new DOS-style partition table with a single Linux partition that occupies the entire disk.

Let's verify the new partition table:

```bash
sudo sfdisk -l /dev/loop0
```

Example output:

```
Disk /dev/loop0: 20 GiB, 21474836480 bytes, 41943040 sectors
Disk model:
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0x6d7f3a26

Device        Boot Start      End  Sectors  Size Id Type
/dev/loop0p1         2048 41943039 41940992   20G 83 Linux
```

The output shows that we have successfully created a new 20 GB Linux partition on the `/dev/loop0` disk.

In the next step, we will learn how to backup and restore partition tables using the `sfdisk` command.
