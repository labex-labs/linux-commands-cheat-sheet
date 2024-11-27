# Restore a Specific File from a Backup Archive

In this step, we will learn how to restore a specific file from a backup archive using the `restore` command.

First, let's create a sample file to be backed up:

```
echo "This is a sample file." > ~/project/sample_file.txt
```

Next, we will create a backup archive using the `dump` command:

```
sudo dump -0Lf ~/project/backup.archive ~/project/sample_file.txt
```

Now, let's say we accidentally deleted the `sample_file.txt` file. We can use the `restore` command to recover it from the backup archive:

```
sudo restore -x -f ~/project/backup.archive ~/project/sample_file.txt
```

The `-x` option tells `restore` to extract a specific file or directory from the backup archive, and the `-f` option specifies the path to the backup archive file.

Example output:

```
Verify tape position.
Restoring from tape image.
Extracting sample_file.txt
```

To verify that the file has been restored, you can check the contents of the `~/project` directory:

```
ls -l ~/project
```

Example output:

```
total 4
-rw-r--r-- 1 labex labex 22 May 29 12:34 sample_file.txt
```

As you can see, the `sample_file.txt` has been successfully restored from the backup archive.
