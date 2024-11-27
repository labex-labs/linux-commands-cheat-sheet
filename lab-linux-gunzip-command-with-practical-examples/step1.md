# Understand the Purpose of gunzip Command

In this step, we will explore the purpose of the `gunzip` command in Linux. The `gunzip` command is used to decompress files that have been compressed using the `gzip` compression utility.

The `gzip` command is a popular compression tool in Linux that reduces the size of files by applying lossless data compression. The resulting compressed files have a `.gz` extension. The `gunzip` command is used to reverse this process and extract the original file from the compressed `.gz` file.

Let's start by creating a sample text file and compressing it using `gzip`:

```bash
echo "This is a sample text file." > sample.txt
gzip sample.txt
```

Example output:

```

```

Now, we can use the `gunzip` command to decompress the `sample.txt.gz` file:

```bash
gunzip sample.txt.gz
```

Example output:

```

```

As you can see, the `gunzip` command has decompressed the `sample.txt.gz` file, and the original `sample.txt` file is now available in the current directory.

The `gunzip` command is a powerful tool for working with compressed files in Linux. It can be used to decompress individual files or even entire directories, as we'll see in the next step.
