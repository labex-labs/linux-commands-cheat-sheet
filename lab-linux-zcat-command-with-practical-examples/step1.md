# Understand the Purpose of zcat Command

In this step, you will learn about the purpose and usage of the `zcat` command in Linux. The `zcat` command is a utility that allows you to view the contents of a gzipped file without having to extract it first.

The `zcat` command is useful when you need to quickly view the contents of a compressed file, without the need to decompress the entire file. This can be particularly helpful when working with large files or when you want to inspect the contents of a file without taking up additional disk space.

Let's start by creating a gzipped file that we can use for our examples:

```bash
# Create a sample text file
echo "This is a sample text file." > sample.txt

# Compress the file using gzip
gzip sample.txt
```

Now, let's use the `zcat` command to view the contents of the compressed file:

```bash
zcat sample.txt.gz
```

Example output:

```
This is a sample text file.
```

As you can see, the `zcat` command allows us to view the contents of the gzipped file without having to extract it first.

In addition to viewing the contents of a gzipped file, you can also combine the `zcat` command with other Linux commands to perform various tasks, such as searching the contents of a compressed file or piping the output to another command. We'll explore these use cases in the next step.
