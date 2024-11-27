# Decompress a Gzipped File Using zcat

In this step, you will learn how to use the `zcat` command to decompress a gzipped file.

Let's start by creating another gzipped file that we can use for our examples:

```bash
# Create a sample text file
echo "This is another sample text file." > another_sample.txt

# Compress the file using gzip
gzip another_sample.txt
```

Now, let's use the `zcat` command to decompress the file:

```bash
zcat another_sample.txt.gz
```

Example output:

```
This is another sample text file.
```

As you can see, the `zcat` command decompresses the gzipped file and displays its contents directly in the terminal.

You can also use the `zcat` command to extract the decompressed contents to a new file:

```bash
zcat another_sample.txt.gz > decompressed_file.txt
```

This will create a new file named `decompressed_file.txt` with the contents of the gzipped file.

The `zcat` command is a convenient way to view or extract the contents of a gzipped file without having to use the `gunzip` or `tar` commands. It's particularly useful when you need to quickly inspect the contents of a compressed file.
