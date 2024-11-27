# Restoring Data from a dump Backup

In this step, we will learn how to restore data from the `dump` backup we created in the previous step.

First, let's create a directory where we will restore the backup:

```bash
mkdir ~/restore
```

Now, we can use the `restore` command to restore the backup:

```bash
sudo restore -rf ~/backup/full_backup.dump -C ~/restore
```

Here's what the different options mean:

- `-r`: Restores the complete backup
- `-f`: Specifies the input file name (`full_backup.dump`)
- `-C`: Specifies the directory where the backup will be restored (`~/restore`)

The `restore` command will start the restoration process, which may take some time depending on the size of the backup.

Example output:

```
Verify volume and initialize maps
Restoring from level 0 dump
Extracting files
Restoring 2456576 blocks.
Restore is complete.
```

Once the restoration is complete, you can verify the contents of the restored directory:

```bash
ls -l ~/restore
```

This will list the contents of the restored directory, allowing you to verify that the data has been successfully restored.

If you need to restore specific files or directories from the backup, you can use the interactive mode of the `restore` command:

```bash
sudo restore -i -f ~/backup/full_backup.dump
```

This will start the interactive `restore` shell, where you can navigate the backup and select the files or directories to restore.
