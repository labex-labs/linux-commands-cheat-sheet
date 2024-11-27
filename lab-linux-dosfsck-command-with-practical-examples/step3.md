# Perform a Thorough Filesystem Check and Repair on a USB Drive

In this step, you will learn how to perform a more thorough check and repair of a FAT32 file system on a USB drive.

First, let's insert a USB drive into the system and identify the device name:

```
$ lsblk
NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINT
sda      8:0    0 119.2G  0 disk
└─sda1   8:1    0 119.2G  0 part /
sdb      8:16   1   7.5G  0 disk
└─sdb1   8:17   1   7.5G  0 part /media/labex/USB_DRIVE
```

In this example, the USB drive is `/dev/sdb1`.

Now, let's perform a thorough check and repair on the file system:

```
$ sudo dosfsck -a -v -w /dev/sdb1
dosfsck 4.2 (2021-01-31)
/dev/sdb1: 2 files, 4/1920 clusters
Reclaimed 2 unused cluster(s)
```

The options used here are:

- `-a`: Automatically repair the file system.
- `-v`: Verbose output, showing all actions taken.
- `-w`: Write changes to the file system.

The output shows that two unused clusters were reclaimed, indicating that the file system was successfully repaired.

To verify the repair, let's list the contents of the file system:

```
$ sudo dosfsck -l /dev/sdb1
Directory dump:
/           <DIR>   2048    0 Jan  1 1980
```

The output shows that the file system is now clean and ready for use.
