# Backup and Restore Partition Table with sfdisk

In this final step, we will learn how to backup and restore partition tables using the `sfdisk` command.

First, let's backup the partition table of the `/dev/loop0` disk:

```bash
sudo sfdisk -d /dev/loop0 > partition_backup.txt
```

This command creates a text file named `partition_backup.txt` that contains the current partition table configuration.

Now, let's simulate a scenario where we need to restore the partition table. We can do this by first deleting the existing partition:

```bash
sudo sfdisk -d /dev/loop0 | sudo sfdisk --force /dev/loop0 -X
```

This command deletes the existing partition on the `/dev/loop0` disk.

To restore the partition table, we can use the backup file we created earlier:

```bash
sudo sfdisk /dev/loop0 < partition_backup.txt
```

This command reads the partition table configuration from the `partition_backup.txt` file and applies it to the `/dev/loop0` disk.

Let's verify that the partition table has been restored:

```bash
sudo sfdisk -l /dev/loop0
```

Example output:

```
Disk /dev/loop0: 20 GiB, 21474836480 bytes, 41943040 sectors
Disk model:
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0x6d7f3a26

Device        Boot Start      End  Sectors  Size Id Type
/dev/loop0p1         2048 41943039 41940992   20G 83 Linux
```

The output shows that the partition table has been successfully restored.

Congratulations! You have now learned how to use the `sfdisk` command to partition disks and backup/restore partition tables in Linux.
