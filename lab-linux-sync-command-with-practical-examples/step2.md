# Synchronize File System Data with sync Command

In this step, we will learn how to use the `sync` command to synchronize file system data.

First, let's create a new file in the `~/project` directory:

```bash
touch ~/project/test_file.txt
```

Now, let's make some changes to the file:

```bash
echo "This is a test file." > ~/project/test_file.txt
```

To verify that the changes are only in memory and not yet written to the disk, we can use the `ls -l` command to check the file's modification time:

```bash
ls -l ~/project/test_file.txt
```

Example output:

```
-rw-r--r-- 1 labex labex 20 Apr 24 12:34 ~/project/test_file.txt
```

Notice the modification time, which may not reflect the recent changes we made.

Now, let's use the `sync` command to synchronize the file system data:

```bash
sudo sync
```

After running the `sync` command, let's check the file's modification time again:

```bash
ls -l ~/project/test_file.txt
```

Example output:

```
-rw-r--r-- 1 labex labex 20 Apr 24 12:35 ~/project/test_file.txt
```

You can see that the modification time has been updated, indicating that the changes have been written to the disk.

The `sync` command ensures that all buffered modifications are flushed to the underlying storage media, making the file system data consistent with the in-memory state.
