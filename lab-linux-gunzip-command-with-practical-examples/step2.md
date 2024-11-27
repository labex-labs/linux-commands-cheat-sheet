# Decompress a Gzipped File

In this step, we will learn how to decompress a single gzipped file using the `gunzip` command.

First, let's create a new text file and compress it using `gzip`:

```bash
echo "This is another sample text file." > sample2.txt
gzip sample2.txt
```

Example output:

```

```

Now, we can use the `gunzip` command to decompress the `sample2.txt.gz` file:

```bash
gunzip sample2.txt.gz
```

Example output:

```

```

As you can see, the `gunzip` command has decompressed the `sample2.txt.gz` file, and the original `sample2.txt` file is now available in the current directory.

The `gunzip` command can be used to decompress any file that has been compressed using the `gzip` utility, regardless of the file type. It automatically detects the compressed file format and extracts the original file.
