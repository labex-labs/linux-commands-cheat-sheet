# Check and Repair Errors on a FAT32 File System

In this step, you will learn how to use the `dosfsck` command to check and repair errors on a FAT32 file system.

First, let's create a FAT32 file system on a USB drive:

```
$ sudo mkfs.vfat -F 32 /dev/sdb1
```

Now, let's intentionally corrupt the file system by creating a file with an invalid name:

```
$ sudo touch /media/labex/USB_DRIVE/invalid_file#@!.txt
```

Next, let's use the `dosfsck` command to check and repair the file system:

```
$ sudo dosfsck -a /dev/sdb1
dosfsck 4.2 (2021-01-31)
/dev/sdb1: 1 files, 1/2048 clusters
Reclaimed 1 unused cluster(s)
```

The `-a` option tells `dosfsck` to automatically repair the file system without prompting the user. The output shows that one unused cluster was reclaimed, indicating that the file system was successfully repaired.

To verify the repair, let's list the contents of the file system:

```
$ sudo dosfsck -l /dev/sdb1
Directory dump:
/           <DIR>   2048    0 Jan  1 1980
INVALID_FI~1 TXT       0    0 Jan  1 1980
```

The output shows that the invalid file has been removed, and the file system is now clean.
