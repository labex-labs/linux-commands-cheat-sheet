# Create a FAT32 File System Using mkfs.msdos

In this step, we will learn how to create a FAT32 file system on a storage device using the `mkfs.msdos` command.

First, let's create a 100MB file to simulate a storage device:

```bash
dd if=/dev/zero of=fat32_disk.img bs=1M count=100
```

This will create a 100MB file named `fat32_disk.img` in the current directory.

Now, we can use the `mkfs.msdos` command to create a FAT32 file system on the simulated storage device:

```bash
sudo mkfs.msdos -F 32 fat32_disk.img
```

The `-F 32` option specifies that we want to create a FAT32 file system.

Example output:

```
mkfs.msdos 6.1 (2023-01-11)
fat32_disk.img has 204800 sectors and a sector size of 512 bytes
Creating a FAT32 filesystem [65536 clusters] with 32768 sectors per cluster and 8192 reserved sectors
File system label=
Volume ID=0e1d4a1b
Filesystem is FAT32
```

This command will create a FAT32 file system on the `fat32_disk.img` file.
