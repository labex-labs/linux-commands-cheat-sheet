# Create and Manage Partitions with parted

In this step, you will learn how to create and manage partitions on a storage device using the `parted` command.

First, let's create a new virtual disk image file that we can use for our partitioning exercises:

```bash
sudo dd if=/dev/zero of=~/project/disk.img bs=1M count=1024
```

This will create a 1GB disk image file named `disk.img` in the `~/project` directory.

Now, let's start the `parted` interactive shell and work with the newly created disk image:

```bash
sudo parted ~/project/disk.img
```

You should see the `parted` prompt:

```
(parted)
```

To create a new partition, we can use the `mkpart` command. Let's create a primary partition that takes up the entire disk:

```
(parted) mkpart primary 0% 100%
```

This will create a single primary partition that spans the entire disk.

To verify the partition table, we can use the `print` command:

```
(parted) print
Model: (file) ~/project/disk.img
Disk /home/labex/project/disk.img: 1024MB
Sector size (logical/physical): 512B/512B
Partition Table: msdos
Disk Flags:

Number  Start   End     Size    Type     File system  Flags
 1      0.00GB  1.00GB  1.00GB  primary

(parted) quit
```

The output shows that we have successfully created a single primary partition on the disk image.
