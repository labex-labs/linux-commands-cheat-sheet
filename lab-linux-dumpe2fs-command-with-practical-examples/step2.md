# Retrieve Detailed Information About an Ext2/Ext3/Ext4 Filesystem

In this step, you will learn how to use the `dumpe2fs` command to retrieve detailed information about an Ext2, Ext3, or Ext4 filesystem.

First, let's identify the filesystem you want to inspect. You can use the `df` command to list the mounted filesystems on your system:

```
labex@ubuntu:~/project$ df -h
Filesystem      Size  Used Avail Use% Mounted on
/dev/sda1       9.8G  1.3G  8.0G  14% /
tmpfs           1.6G     0  1.6G   0% /run
tmpfs           7.8G     0  7.8G   0% /sys/fs/cgroup
tmpfs           1.6G     0  1.6G   0% /run/user/1000
```

In this example, the root filesystem is located on `/dev/sda1`, so we will use that as the target for the `dumpe2fs` command.

To retrieve detailed information about the Ext filesystem, run the following command:

```
sudo dumpe2fs /dev/sda1
```

This will output a comprehensive report about the filesystem, including details about block sizes, inode counts, journal information, and various other statistics.

Example output:

```
dumpe2fs 1.46.5 (30-Dec-2021)
Filesystem volume name:   <none>
Filesystem UUID:          a1b2c3d4-e5f6-g7h8-i9j0-k1l2m3n4o5p6
Filesystem magic number:  0xEF53
Filesystem revision #:    1 (dynamic)
Filesystem features:      has_journal ext_attr resize_inode dir_index filetype needs_recovery extent 64bit flex_bg sparse_super large_file huge_file dir_nlink extra_isize metadata_csum
Filesystem flags:         signed_directory_hash
Default mount options:    (none)
Filesystem state:         clean
Errors behavior:          Continue
Filesystem OS type:       Linux
Inode count:              2621440
Block count:              10485760
Reserved block count:     524288
Free blocks:              9122367
Free inodes:              2621345
First block:              0
Block size:               4096
Fragment size:            4096
Group descriptor size:    64
Reserved GDT blocks:      1024
Blocks per group:         32768
Fragments per group:      32768
Inodes per group:         8192
Inode blocks per group:   512
Filesystem created:       Tue Feb 28 11:28:41 2023
Last mount time:          Tue Feb 28 11:28:41 2023
Last write time:          Tue Feb 28 11:28:41 2023
Mount count:              1
Maximum mount count:      -1
Last checked:             Tue Feb 28 11:28:41 2023
Check interval:           0 (<none>)
Lifetime writes:          8 MB
Reserved blocks uid:      0 (user root)
Reserved blocks gid:      0 (group root)
First inode:              11
Inode size:               256
Required extra isize:     28
Desired extra isize:      28
Journal inode:            8
Default directory hash:   half_md4
Directory Hash Seed:      a1b2c3d4-e5f6-g7h8-i9j0-k1l2m3n4o5p6
Journal backup:           inode blocks
```

The output provides a wealth of information about the filesystem, including its volume name, UUID, revision, features, flags, block and inode counts, and various other metadata.

Understanding how to interpret the `dumpe2fs` output is crucial for managing and troubleshooting Ext-based filesystems.
