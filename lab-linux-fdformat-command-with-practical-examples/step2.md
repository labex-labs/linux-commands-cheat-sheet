# Format a Floppy Disk Using the fdformat Command

In this step, we will learn how to format a floppy disk using the `fdformat` command.

First, let's insert a floppy disk into the drive. In our Ubuntu 22.04 Docker container, the floppy disk device is typically `/dev/fd0`.

To format the floppy disk, run the following command:

```
sudo fdformat /dev/fd0
```

This will perform a low-level format on the floppy disk, preparing it for use.

Example output:

```
Double-sided, 80 tracks, 18 sec/track. Total capacity 1440 kB.
Formatting ... done
```

The `fdformat` command formats the floppy disk, creating the necessary file system structure. The output shows the disk capacity and confirms the formatting process.

After the formatting is complete, you can now use the floppy disk for your desired purposes.
