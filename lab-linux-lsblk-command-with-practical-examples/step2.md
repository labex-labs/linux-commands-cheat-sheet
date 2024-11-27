# List All Block Devices on the System

In this step, we will explore the different options and filters available with the `lsblk` command to list all the block devices on the system.

By default, the `lsblk` command only displays a limited set of information about the block devices. To see more details, we can use the `-a` or `--all` option:

```bash
lsblk -a
```

This will display all the block devices, including those that are not currently mounted.

If you want to see the device types, you can use the `-t` or `--topology` option:

```bash
lsblk -t
```

This will show the device hierarchy and the relationships between different block devices.

To get a more detailed view of the block devices, you can use the `-l` or `--list` option:

```bash
lsblk -l
```

This will display each block device on a separate line, with more columns of information.

You can also combine multiple options to customize the output. For example, to see all block devices with their size and mount point:

```bash
lsblk -alP
```

The `P` option stands for "pairs" and will display the information in a key-value format, making it easier to read.

Finally, you can filter the output by device type using the `-t` or `--types` option. For example, to only see disk devices:

```bash
lsblk -t disk
```

This will display only the disk devices and hide other types of block devices, such as partitions or loop devices.
