# Displaying File System Information with mshowfat

In this step, you will learn how to use the `mshowfat` command to display detailed information about the FAT file system structure on a storage device.

First, let's create a sample FAT-formatted USB drive. We'll use the `mkfs.vfat` command to format a loopback device as a FAT file system:

```bash
sudo dd if=/dev/zero of=fat_image.img bs=1M count=32
sudo mkfs.vfat fat_image.img
```

Now, we can use the `mshowfat` command to display the file system information for the `fat_image.img` file:

```bash
sudo mshowfat fat_image.img
```

Example output:

```
FAT file system
Cluster size: 4096 bytes
Number of FATs: 2
Sectors per FAT: 32
Number of clusters: 7936
Root directory entries: 512
```

The output provides details about the FAT file system, including the cluster size, number of FATs, sectors per FAT, total number of clusters, and the size of the root directory.

You can also use the `mshowfat` command to display information about a physical storage device, such as a USB drive. Assuming your USB drive is mounted at `/dev/sdb1`, you can run:

```bash
sudo mshowfat /dev/sdb1
```

This will show the file system information for the USB drive.
