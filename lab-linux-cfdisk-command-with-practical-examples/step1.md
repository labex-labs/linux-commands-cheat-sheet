# Introduction to cfdisk Command

In this step, we will explore the cfdisk command, a powerful tool for partitioning and managing disk drives in Linux. The cfdisk command provides a user-friendly, interactive interface for creating, deleting, and modifying disk partitions.

To begin, let's start by checking the available disk devices on our system. We can use the `lsblk` command to list all the block devices:

```bash
sudo lsblk
```

Example output:

```
NAME   MAJ:MIN RM  SIZE RO TYPE MOUNTPOINT
sda      8:0    0   20G  0 disk
└─sda1   8:1    0   20G  0 part /
```

As you can see, our system has a single disk device named `sda` with one partition `sda1` mounted as the root file system (`/`).

Now, let's launch the cfdisk utility to manage the disk partitions:

```bash
sudo cfdisk
```

This will open the cfdisk interactive interface, where you can perform various disk partitioning tasks.

The cfdisk interface is divided into several sections:

- The top section displays the disk information, including the disk name, size, and partition table type.
- The middle section shows the existing partitions and their details, such as the partition name, size, type, and flags.
- The bottom section displays the available commands and options.

You can use the arrow keys to navigate through the partitions, and the function keys (F1-F6) to perform various actions, such as creating, deleting, or modifying partitions.

For example, to create a new partition, press the `New` option (usually `F2`) and follow the on-screen instructions to specify the partition size and type.

When you're done with the partitioning tasks, you can write the changes to the disk by selecting the `Write` option (usually `F6`) and confirming the action.

Remember, the cfdisk command operates directly on the disk, so be careful when making changes to ensure you don't accidentally delete or modify important data.
