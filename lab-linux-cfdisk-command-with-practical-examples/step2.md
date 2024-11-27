# Partitioning a Disk using cfdisk

In this step, we will use the cfdisk command to partition a disk in our Linux environment.

First, let's create a new virtual disk that we can use for partitioning. We can use the `dd` command to create a 1GB disk image file:

```bash
sudo dd if=/dev/zero of=~/project/disk.img bs=1M count=1000
```

This will create a 1GB disk image file named `disk.img` in the `~/project` directory.

Now, let's use cfdisk to partition the disk:

```bash
sudo cfdisk ~/project/disk.img
```

This will open the cfdisk interface, where we can create new partitions.

To create a new partition, follow these steps:

1. Use the arrow keys to select the "Free Space" option.
2. Press the `New` function key (usually `F2`) to create a new partition.
3. Specify the partition size (in MB) and press Enter.
4. Select the partition type (e.g., Linux, Linux swap, etc.) and press Enter.

Once you have created the desired partitions, press the `Write` function key (usually `F6`) to save the changes to the disk.

Finally, let's verify the partitions we created:

```bash
sudo fdisk -l ~/project/disk.img
```

Example output:

```
Disk ~/project/disk.img: 1 GiB, 1073741824 bytes, 2097152 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0x4f3d8c9d

Device             Start       End   Sectors   Size Type
~/project/disk.img1     2048  2097151  2095104   1G Linux
```

As you can see, we have successfully created a 1GB Linux partition on the disk.
