# Securely Deleting Files with shred

In this step, you will learn how to use the `shred` command to securely delete files on your system.

First, let's create a few sample files to work with:

```bash
touch file1.txt file2.txt file3.txt
```

Example output:

```

```

To securely delete a single file using `shred`, run the following command:

```bash
sudo shred -u file1.txt
```

The `-u` option tells `shred` to remove the file after overwriting it.

Example output:

```

```

You can also delete multiple files at once using `shred`:

```bash
sudo shred -u file2.txt file3.txt
```

Example output:

```

```

The `shred` command overwrites the file contents multiple times before deleting the file, making it much more difficult to recover the data.

If you want to see the progress of the shredding process, you can use the `-v` (verbose) option:

```bash
sudo shred -vuz file1.txt
```

Example output:

```

```

The `-z` option adds a final overwrite with zeros to hide the shredding.

In the next step, you will learn how to use `shred` to overwrite and wipe entire disk partitions.
