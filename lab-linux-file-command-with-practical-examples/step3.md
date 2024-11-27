# Handling Compressed Files

In this step, we will learn how to work with compressed files using the `file` command and other Linux utilities.

First, let's create a compressed file:

```bash
cd ~/project
tar -czf archive.tar.gz text_file.txt binary_file.bin
```

Now, let's use the `file` command to identify the compressed file:

```bash
file archive.tar.gz
```

Example output:

```
archive.tar.gz: gzip compressed data, last modified: Tue Apr 18 12:34:56 2023, max compression
```

The `file` command correctly identifies the `archive.tar.gz` file as a gzipped compressed file.

To extract the contents of the compressed file, we can use the `tar` command:

```bash
tar -xzf archive.tar.gz
ls -l
```

Example output:

```
total 2048
-rw-r--r-- 1 labex labex     20 Apr 18 12:34 binary_file.bin
-rw-r--r-- 1 labex labex     19 Apr 18 12:34 text_file.txt
```

The `tar -xzf` command extracts the contents of the `archive.tar.gz` file, and we can see the extracted `binary_file.bin` and `text_file.txt` files.

Linux also provides other tools for working with compressed files, such as `gzip` and `gunzip` for handling gzipped files, and `unzip` for handling ZIP archives. Let's try using `gunzip` to decompress the `text_file.txt.gz` file we created earlier:

```bash
gunzip text_file.txt.gz
file text_file.txt
```

Example output:

```
text_file.txt: ASCII text
```

The `gunzip` command decompresses the `text_file.txt.gz` file, and the `file` command confirms that the decompressed file is an ASCII text file.

Understanding how to work with compressed files is an essential skill for managing files and data in a Linux environment.
