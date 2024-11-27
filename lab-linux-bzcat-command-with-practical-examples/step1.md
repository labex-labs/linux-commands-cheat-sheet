# Understand the Purpose of bzcat Command

In this step, you will learn about the purpose and usage of the `bzcat` command in Linux. The `bzcat` command is a utility that allows you to decompress Bzip2-compressed files without extracting them to a file.

The `bzcat` command is useful when you need to view the contents of a Bzip2-compressed file without extracting it to disk. This can be particularly helpful when dealing with large compressed files, as it allows you to access the contents of the file without consuming additional disk space.

Let's start by creating a Bzip2-compressed file:

```bash
# Create a sample text file
echo "This is a sample text file." > sample.txt

# Compress the file using Bzip2
bzip2 sample.txt
```

Now, let's use the `bzcat` command to view the contents of the compressed file:

```bash
# View the contents of the compressed file using bzcat
bzcat sample.txt.bz2
```

Example output:

```
This is a sample text file.
```

As you can see, the `bzcat` command allows you to view the contents of the Bzip2-compressed file without extracting it to disk.
