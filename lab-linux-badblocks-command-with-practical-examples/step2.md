# Scanning a Disk for Bad Blocks

In this step, we will learn how to perform a comprehensive scan of a disk to identify any bad blocks.

First, let's identify the disk we want to scan. You can use the `lsblk` command to list all the block devices on your system:

```bash
sudo lsblk
```

Example output:

```
NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINT
sda      8:0    0   100G  0 disk
└─sda1   8:1    0   100G  0 part /
sdb      8:16   0    20G  0 disk
```

In this example, the disk we want to scan is `/dev/sdb`, which is a 20GB disk.

To perform a non-destructive read-only scan of the disk, we can use the following command:

```bash
sudo badblocks -v /dev/sdb
```

This command will scan the `/dev/sdb` disk for bad blocks and display the progress of the scan. The `-v` option enables verbose output, which provides more detailed information about the scan.

Example output:

```
Checking blocks 0 to 41943039
Checking for bad blocks (read-only test)
Pass completed, 0 bad blocks found.
```

The output shows that the scan found no bad blocks on the `/dev/sdb` disk.

If the scan finds any bad blocks, you can use the `-o` option to save the list of bad blocks to a file:

```bash
sudo badblocks -v -o badblocks.txt /dev/sdb
```

This will save the list of bad blocks to a file named `badblocks.txt` in the current directory.
