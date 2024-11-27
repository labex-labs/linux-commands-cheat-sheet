# Formatting a USB Drive with the mkfs Command

In this step, we will learn how to format a USB drive using the `mkfs` command.

First, let's identify the USB drive device. Run the following command to list the available block devices:

```bash
sudo fdisk -l
```

Example output:

```
Disk /dev/sdb: 14.9 GiB, 16008609792 bytes, 31266176 sectors
Disk model: USB Drive
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0x9a3d4d3b

Device     Boot Start      End  Sectors  Size Id Type
/dev/sdb1        2048 31266175 31264128 14.9G 83 Linux
```

In the output, you can see that the USB drive is `/dev/sdb`.

Now, let's format the USB drive with the FAT32 file system:

```bash
sudo mkfs -t vfat /dev/sdb
```

Example output:

```
mkfs.fat 4.2 (2021-01-31)
/dev/sdb: 14.9 GiB, 16008609792 bytes, 31266176 clusters
FAT type is FAT32, cluster size is 4096 bytes
Root directory entries is 0
sectors per FAT is 1960
Media byte is 0xf8
Sectors per track is 64
Number of heads is 128
Hidden sectors is 2048
Total sectors is 31266176
File system type is FAT32
```

This creates a FAT32 file system on the entire `/dev/sdb` USB drive.

In the next step, we will learn how to mount the formatted USB drive and access its contents.
