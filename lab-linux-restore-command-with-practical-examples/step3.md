# Restore an Entire Directory Structure from a Backup Archive

In this step, we will learn how to restore an entire directory structure from a backup archive using the `restore` command.

First, let's create a sample directory structure and some files to be backed up:

```
mkdir -p ~/project/backup_dir/subdir1 ~/project/backup_dir/subdir2
touch ~/project/backup_dir/file1.txt ~/project/backup_dir/subdir1/file2.txt ~/project/backup_dir/subdir2/file3.txt
```

Now, let's create a backup archive of the entire `backup_dir` directory:

```
sudo dump -0Lf ~/project/backup.archive ~/project/backup_dir
```

Suppose we accidentally delete the entire `backup_dir` directory. We can use the `restore` command to restore the entire directory structure from the backup archive:

```
sudo restore -r -f ~/project/backup.archive
```

The `-r` option tells `restore` to restore the entire file system from the backup archive.

Example output:

```
Verify tape position.
Restoring from tape image.
Extracting backup_dir
Extracting backup_dir/file1.txt
Extracting backup_dir/subdir1
Extracting backup_dir/subdir1/file2.txt
Extracting backup_dir/subdir2
Extracting backup_dir/subdir2/file3.txt
```

To verify that the directory structure has been restored, you can check the contents of the `~/project` directory:

```
ls -R ~/project/backup_dir
```

Example output:

```
~/project/backup_dir:
file1.txt  subdir1  subdir2

~/project/backup_dir/subdir1:
file2.txt

~/project/backup_dir/subdir2:
file3.txt
```

As you can see, the entire `backup_dir` directory structure, including the subdirectories and files, has been successfully restored from the backup archive.
