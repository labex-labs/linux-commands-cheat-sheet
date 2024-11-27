# Backup and Restore Filesystem Metadata with tune2fs

In this step, we will learn how to backup and restore file system metadata using the `tune2fs` command.

First, let's create a backup of the file system metadata:

```bash
sudo tune2fs -f -j /dev/sda1 backup.txt
```

This command will create a file named `backup.txt` in the current directory, containing the backup of the file system metadata.

Now, let's simulate a scenario where we need to restore the file system metadata. For this, we will first corrupt the file system by modifying some of the metadata parameters:

```bash
sudo tune2fs -c 10 -i 7d -m 5 /dev/sda1
```

This command sets the maximum mount count to 10, the file system check interval to 7 days, and the reserved blocks percentage to 5%.

To restore the file system metadata, we can use the backup file we created earlier:

```bash
sudo tune2fs -l backup.txt /dev/sda1
```

This command will restore the file system metadata from the `backup.txt` file.

You can verify the restored metadata by running the `tune2fs -l /dev/sda1` command and comparing the output with the original file system information.
