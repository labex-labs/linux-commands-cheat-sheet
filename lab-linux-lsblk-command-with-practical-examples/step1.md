# Understand the lsblk Command and Its Purpose

In this step, we will learn about the `lsblk` command in Linux, which is used to list information about block devices on the system. The `lsblk` command provides a tree-like listing of devices, making it easy to visualize the relationships between different storage devices and partitions.

The `lsblk` command is a useful tool for system administrators and developers who need to manage and monitor storage devices on their Linux systems. It can be used to quickly identify the storage devices available on the system, their types, sizes, and other relevant information.

Let's start by running the `lsblk` command in the terminal:

```bash
lsblk
```

Example output:

```
NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINT
loop0    7:0    0  55.5M  1 loop /snap/core18/2128
loop1    7:1    0  55.4M  1 loop /snap/core18/2284
loop2    7:2    0  43.6M  1 loop /snap/snapd/15534
loop3    7:3    0  61.9M  1 loop /snap/gtk-common-themes/1535
loop4    7:4    0  31.1M  1 loop /snap/snapd/16292
sda      8:0    0   50G  0 disk
├─sda1   8:1    0   49G  0 part /
└─sda2   8:2    0  976M  0 part [SWAP]
```

The output shows the available block devices on the system, including loop devices (used for mounting snap packages) and the system's main storage device `sda`, which has two partitions (`sda1` and `sda2`).

The `lsblk` command provides the following information for each block device:

- `NAME`: The name of the block device.
- `MAJ:MIN`: The major and minor device numbers.
- `RM`: Indicates whether the device is removable (1) or not (0).
- `SIZE`: The size of the device.
- `RO`: Indicates whether the device is read-only (1) or not (0).
- `TYPE`: The type of the block device (e.g., disk, partition, loop).
- `MOUNTPOINT`: The mount point of the device, if it is mounted.

This information can be very useful when managing and troubleshooting storage devices on your Linux system.
