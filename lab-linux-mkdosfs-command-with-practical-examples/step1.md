# Introduction to mkdosfs Command

In this step, we will learn about the `mkdosfs` command, which is used to create a DOS filesystem on a partition or format a USB drive. The `mkdosfs` command is part of the `dosfstools` package, which provides utilities for creating and checking MS-DOS FAT filesystems.

First, let's check if the `dosfstools` package is installed on our system:

```bash
sudo apt-get update
sudo apt-get install -y dosfstools
```

Example output:

```
Reading package lists... Done
Building dependency tree... Done
The following additional packages will be installed:
  libfuse2
The following NEW packages will be installed:
  dosfstools libfuse2
0 upgraded, 2 newly installed, 0 to remove and 0 not upgraded.
```

The `mkdosfs` command is used to create a DOS filesystem on a partition or device. The basic syntax is:

```bash
sudo mkdosfs [options] <device>
```

Where `<device>` is the partition or device you want to format.

Some common options for the `mkdosfs` command include:

- `-F 12|16|32`: Specifies the FAT type (12, 16, or 32 bits)
- `-n <volume-name>`: Sets the volume name
- `-S <sector-size>`: Sets the sector size (default is 512 bytes)
- `-c`: Checks the device for bad blocks before formatting

Let's try creating a DOS filesystem on a partition:

```bash
sudo mkdosfs -F 32 /dev/sdb1
```

Example output:

```
mkdosfs 4.2 (2021-01-31)
/dev/sdb1 has 20971520 sectors of 512 bytes.

Creating a FAT32 filesystem in the volume with 20971520 available sectors.
Creating boot sector...
Creating FAT table...
Reserving space for root directory...
Writing directory entries...
Writing FAT tables...
Writing root directory...
```

In this example, we're creating a FAT32 filesystem on the `/dev/sdb1` partition.
