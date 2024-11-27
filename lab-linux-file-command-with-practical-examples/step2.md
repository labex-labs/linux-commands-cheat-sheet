# Identifying File Types

In this step, we will learn how to use the `file` command to identify different types of files, including text files, binary files, and compressed files.

Let's start by creating some sample files:

```bash
cd ~/project
echo "This is a text file" > text_file.txt
dd if=/dev/urandom of=binary_file.bin bs=1M count=1 > /dev/null 2>&1
gzip text_file.txt
```

Now, let's use the `file` command to identify the file types:

```bash
file text_file.txt
file binary_file.bin
file text_file.txt.gz
```

Example output:

```
text_file.txt: ASCII text
binary_file.bin: data
text_file.txt.gz: gzip compressed data, was "text_file.txt", last modified: Tue Apr 18 12:34:56 2023, max compression
```

As you can see, the `file` command correctly identifies the `text_file.txt` as an ASCII text file, the `binary_file.bin` as a binary data file, and the `text_file.txt.gz` as a gzipped file.

The `file` command can also provide more detailed information about the contents of a file. For example, let's try it on a compressed file:

```bash
file -z text_file.txt.gz
```

Example output:

```
text_file.txt.gz: gzip compressed data, was "text_file.txt", last modified: Tue Apr 18 12:34:56 2023, max compression
```

The `-z` option tells the `file` command to look inside compressed files and provide information about the original file.

Understanding how to use the `file` command to identify different file types is an essential skill for working with files in a Linux environment.
