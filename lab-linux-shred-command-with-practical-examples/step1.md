# Introduction to the shred Command

In this step, you will learn about the `shred` command in Linux, which is used to securely delete files by overwriting their contents multiple times. This ensures that the deleted files cannot be recovered using common data recovery techniques.

First, let's create a sample file to work with:

```bash
echo "This is a sample file to be shredded." > sample_file.txt
```

Example output:

```

```

The `shred` command works by overwriting the contents of a file with random data multiple times before deleting it. This makes it much more difficult for the file to be recovered, even with specialized data recovery tools.

To use the `shred` command, simply run the following:

```bash
sudo shred sample_file.txt
```

Example output:

```

```

The `shred` command has several options that allow you to customize its behavior. Some common options include:

- `-n, --iterations=N`: Overwrite the file N times instead of the default 3 times.
- `-z, --zero`: Add a final overwrite with zeros to hide shredding.
- `-u, --remove`: Truncate and remove the file after overwriting.
- `-v, --verbose`: Show progress.

For example, to overwrite a file 5 times and then remove it, you can use the following command:

```bash
sudo shred -n 5 -u sample_file.txt
```

Example output:

```

```

In the next step, you will learn how to use the `shred` command to securely delete files.
