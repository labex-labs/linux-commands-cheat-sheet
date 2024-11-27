# Performing a Full System Backup with dump

In this step, we will learn how to perform a full system backup using the `dump` command.

First, let's create a directory to store our backup files:

```bash
mkdir ~/backup
```

Now, we can use the `dump` command to create a full backup of the root file system (`/`):

```bash
sudo dump -0Laf ~/backup/full_backup.dump /
```

Here's what the different options mean:

- `-0`: Specifies a full (level 0) backup
- `-L`: Preserves the last modification time of each file in the backup
- `-a`: Writes the backup to a file instead of a tape device
- `-f`: Specifies the output file name (`full_backup.dump`)

The backup process may take some time, depending on the size of your file system.

Example output:

```
DUMP: Date of this level 0 dump: Fri Apr 14 14:22:33 2023
DUMP: Dumping / (/) to ~/backup/full_backup.dump
DUMP: Writing 10 Kilobyte records
DUMP: Estimated 2456576 blocks (1200 Megabytes).
DUMP: Dumping (Pass I) [directories]:
DUMP: Dumping (Pass II) [regular files]:
DUMP: Wrote 2456576 blocks
DUMP: DUMP IS DONE
```

Once the backup is complete, you can verify the contents of the backup file:

```bash
sudo restore -tf ~/backup/full_backup.dump
```

This will list the contents of the backup file without actually restoring the data.

In the next step, we will learn how to restore data from the `dump` backup.
