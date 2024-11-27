# Create and Format a Floppy Disk Using the mformat Command

In this step, you will learn how to create and format a floppy disk using the `mformat` command.

First, let's check if a floppy disk drive is available in our Docker container environment:

```
sudo fdisk -l
```

Example output:

```
Disk /dev/fd0: 1.44 MiB, 1474560 bytes, 2880 sectors
```

The output shows that a floppy disk drive `/dev/fd0` is available, which we can use for formatting.

Now, let's use the `mformat` command to create and format a floppy disk:

```
sudo mformat -t 80 -h 2 -s 18 /dev/fd0
```

Example output:

```
mformat 4.0 (2018-03-19)
Formatting track 0
Formatting track 1
Formatting track 2
...
Formatting track 79
```

In this command, we're formatting the floppy disk with 80 tracks, 2 heads, and 18 sectors per track. The `mformat` command creates a DOS/FAT file system on the floppy disk.

To verify that the floppy disk has been successfully formatted, we can use the `mcopy` command to list the contents of the floppy disk:

```
sudo mcopy -i /dev/fd0 ::
```

Example output:

```
Volume in drive A has no label
 Directory for /
```

The output shows that the floppy disk has been successfully formatted and is ready for use.
