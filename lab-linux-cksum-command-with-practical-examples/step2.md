# Calculate Checksums for Files

In this step, you will learn how to calculate the checksum of files using the `cksum` command.

First, let's create a sample file to work with:

```bash
echo "This is a sample file." > sample.txt
```

Now, let's calculate the checksum of the `sample.txt` file:

```bash
cksum sample.txt
```

Example output:

```
2995857905 21 sample.txt
```

The output shows the checksum value (2995857905), the file size in bytes (21), and the filename (sample.txt).

You can also calculate the checksums of multiple files at once:

```bash
cksum sample.txt file1.txt file2.txt
```

Example output:

```
2995857905 21 sample.txt
3456789012 34 file1.txt
6789012345 56 file2.txt
```

This command calculates the checksum for each of the three files and displays the results.

The `cksum` command is useful for verifying the integrity of files, especially when transferring or downloading files. By comparing the checksum of the original file with the checksum of the downloaded file, you can ensure that the file has not been corrupted during the transfer.
