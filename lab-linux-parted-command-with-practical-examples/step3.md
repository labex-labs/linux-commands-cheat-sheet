# Resize and Delete Partitions with parted

In this step, you will learn how to resize and delete partitions using the `parted` command.

First, let's start the `parted` interactive shell and work with the disk image we created in the previous step:

```bash
sudo parted ~/project/disk.img
```

To resize the existing partition, we can use the `resizepart` command. Let's resize the partition to 512MB:

```
(parted) resizepart 1 512MB
```

This will resize the first (and only) partition to 512MB.

To verify the changes, we can use the `print` command again:

```
(parted) print
Model: (file) ~/project/disk.img
Disk /home/labex/project/disk.img: 1024MB
Sector size (logical/physical): 512B/512B
Partition Table: msdos
Disk Flags:

Number  Start   End     Size    Type     File system  Flags
 1      0.00GB  0.50GB  0.50GB  primary

(parted) quit
```

Now, let's delete the partition using the `rm` command:

```bash
sudo parted ~/project/disk.img
(parted) print
(parted) rm 1
(parted) print
Model: (file) ~/project/disk.img
Disk /home/labex/project/disk.img: 1024MB
Sector size (logical/physical): 512B/512B
Partition Table: msdos
Disk Flags:

Number  Start  End  Size  Type  File system  Flags

(parted) quit
```

The output shows that the partition has been successfully deleted.
