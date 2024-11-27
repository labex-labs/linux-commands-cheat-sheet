# Introduction to sfdisk Command

In this step, we will explore the `sfdisk` command, which is a powerful tool for managing disk partitions in Linux. The `sfdisk` command allows you to create, delete, and modify disk partitions without the need for a graphical user interface.

First, let's check the version of `sfdisk` installed on our system:

```bash
sfdisk --version
```

Example output:

```
sfdisk from util-linux 2.38
```

Next, we can use the `sfdisk` command to list the current partitions on a disk. Let's assume we have a disk at `/dev/sdb`:

```bash
sudo sfdisk -l /dev/sdb
```

Example output:

```
Disk /dev/sdb: 20 GiB, 21474836480 bytes, 41943040 sectors
Disk model: Virtual disk
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0x00000000

Device     Boot Start      End  Sectors  Size Id Type
/dev/sdb1        2048 41943039 41940992   20G 83 Linux
```

This command displays the partition table for the `/dev/sdb` disk, including the start and end sectors, size, and partition type.

In the next step, we will learn how to partition a disk using the `sfdisk` command.
