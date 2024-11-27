# Analyzing FAT File System Structures using mshowfat

In this final step, you will learn how to use the `mshowfat` command to analyze the internal structures of a FAT file system, which can be useful for troubleshooting and understanding the file system layout.

Let's start by creating a sample file and directory structure on the `fat_image.img` file we created earlier:

```bash
sudo mkdir -p fat_image/documents
sudo touch fat_image/documents/sample.txt
```

Now, let's use the `mshowfat` command to examine the file system structure in more detail:

```bash
sudo mshowfat -v fat_image.img
```

The `-v` (verbose) option will provide a more detailed output, including information about the file system's boot sector, FAT tables, and directory entries.

Example output:

```
FAT file system
Cluster size: 4096 bytes
Number of FATs: 2
Sectors per FAT: 32
Number of clusters: 7936
Root directory entries: 512

Boot sector:
  Jump instruction: EB 58 90
  OEM name: MSWIN4.1
  Bytes per sector: 512
  Sectors per cluster: 8
  Reserved sectors: 1
  Number of FATs: 2
  Root directory entries: 512
  Total sectors: 32768
  Media descriptor: F8
  Sectors per FAT: 32
  Sectors per track: 32
  Number of heads: 64
  Hidden sectors: 0
  Total sectors (long): 32768

FAT 1 at sector 1, FAT 2 at sector 33
Root directory at cluster 2

Directory dump:
  Cluster 2, sector 0, offset 0:
    .          <DIR>        2023-04-12 10:00:00
    ..         <DIR>        2023-04-12 10:00:00
    documents  <DIR>        2023-04-12 10:00:00

  Cluster 3, sector 0, offset 0:
    sample.txt             12 2023-04-12 10:00:00
```

The detailed output provides information about the file system's boot sector, FAT tables, and the directory structure. You can use this information to understand how the FAT file system is organized and troubleshoot any issues related to file system corruption or data recovery.
