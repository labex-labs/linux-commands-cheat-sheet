# Customize FAT32 File System Parameters with mkfs.msdos

In this step, we will learn how to customize the FAT32 file system parameters using the `mkfs.msdos` command.

The `mkfs.msdos` command provides several options to customize the file system parameters, such as the cluster size, volume label, and volume ID.

Let's create a FAT32 file system with a custom cluster size of 16 sectors per cluster:

```bash
sudo mkfs.msdos -F 32 -s 16 fat32_disk.img
```

The `-s 16` option sets the number of sectors per cluster to 16.

Example output:

```
mkfs.msdos 6.1 (2023-01-11)
fat32_disk.img has 204800 sectors and a sector size of 512 bytes
Creating a FAT32 filesystem [102400 clusters] with 16 sectors per cluster and 8192 reserved sectors
File system label=
Volume ID=0e1d4a1b
Filesystem is FAT32
```

You can also set a custom volume label and volume ID using the `-n` and `-i` options, respectively:

```bash
sudo mkfs.msdos -F 32 -n "My FAT32 Volume" -i 0xdeadbeef fat32_disk.img
```

The `-n "My FAT32 Volume"` option sets the volume label to "My FAT32 Volume", and the `-i 0xdeadbeef` option sets the volume ID to `0xdeadbeef`.

Example output:

```
mkfs.msdos 6.1 (2023-01-11)
fat32_disk.img has 204800 sectors and a sector size of 512 bytes
Creating a FAT32 filesystem [65536 clusters] with 32768 sectors per cluster and 8192 reserved sectors
File system label=My FAT32 Volume
Volume ID=deadbeef
Filesystem is FAT32
```
