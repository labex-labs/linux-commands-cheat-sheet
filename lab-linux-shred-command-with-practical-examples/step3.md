# Overwriting Disk Partitions with shred

In this final step, you will learn how to use the `shred` command to overwrite and wipe entire disk partitions.

**Note: This step will overwrite data on your disk partitions. Make sure you have backed up any important data before proceeding.**

First, let's list the available disk partitions on your system:

```bash
sudo fdisk -l
```

Example output:

```
Disk /dev/sda: 20 GiB, 21474836480 bytes, 41943040 sectors
Disk model: Virtual disk
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0x1234abcd

Device     Boot Start     End Sectors  Size Id Type
/dev/sda1        2048 41943039 41941992   20G 83 Linux
```

In this example, the disk partition we want to overwrite is `/dev/sda1`.

To securely overwrite the entire partition, run the following command:

```bash
sudo shred -vfz /dev/sda1
```

The options used are:

- `-v`: Verbose mode, to show the progress of the shredding process.
- `-f`: Force overwriting, even if the file appears to be a terminal.
- `-z`: Add a final overwrite with zeros to hide shredding.

**Warning: This command will completely overwrite the contents of the `/dev/sda1` partition. Make sure you have backed up any important data before running this command.**

Example output:

```

```

The `shred` command will overwrite the entire partition multiple times, making the data on the partition unrecoverable.

This concludes the lab on the `shred` command. You have learned how to securely delete files and overwrite disk partitions using this powerful tool.
