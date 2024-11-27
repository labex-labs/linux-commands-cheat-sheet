# Formatting a USB Drive with DOS Filesystem

In this step, we will learn how to format a USB drive with a DOS filesystem using the `mkdosfs` command.

First, let's insert a USB drive into our system. We can use the `lsblk` command to identify the device:

```bash
lsblk
```

Example output:

```
NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINT
sda      8:0    0 465.8G  0 disk
├─sda1   8:1    0   512M  0 part /boot/efi
└─sda2   8:2    0 465.3G  0 part /
sdb      8:16   1   7.5G  0 disk
```

In this example, the USB drive is identified as `/dev/sdb`.

Now, let's format the USB drive with a DOS filesystem:

```bash
sudo mkdosfs -F 32 /dev/sdb
```

Example output:

```
mkdosfs 4.2 (2021-01-31)
/dev/sdb has 15523840 sectors of 512 bytes.

Creating a FAT32 filesystem in the volume with 15523840 available sectors.
Creating boot sector...
Creating FAT table...
Reserving space for root directory...
Writing directory entries...
Writing FAT tables...
Writing root directory...
```

We've created a FAT32 filesystem on the `/dev/sdb` USB drive.
