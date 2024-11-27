# Understand the bzmore Command

In this step, you will learn about the `bzmore` command, which is used to view the contents of compressed text files in the `.bz2` format. The `bzmore` command is similar to the `more` command, but it can handle compressed files.

First, let's create a sample `.bz2` file:

```bash
# Create a sample text file
echo "This is a sample text file." > sample.txt

# Compress the file using bzip2
bzip2 sample.txt
```

Now, let's use the `bzmore` command to view the contents of the compressed file:

```bash
bzmore sample.txt.bz2
```

Example output:

```
This is a sample text file.
```

The `bzmore` command allows you to navigate through the compressed file, just like the `more` command. You can use the following commands to navigate:

- Press the spacebar to view the next page
- Press the Enter key to view the next line
- Type `q` to quit

The `bzmore` command is useful when you need to view the contents of a compressed file without having to decompress it first. This can save disk space and improve performance when working with large compressed files.
