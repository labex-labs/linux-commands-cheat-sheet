# Understand the bzip2 Compression Utility

In this step, you will learn about the bzip2 compression utility in Linux. bzip2 is a powerful command-line tool that can be used to compress and decompress files, providing better compression ratios compared to the standard gzip utility.

First, let's check the version of bzip2 installed on your system:

```bash
bzip2 --version
```

Example output:

```
bzip2, a block-sorting file compressor, version 1.0.8
Copyright (C) 1996-2019 Julian Seward <jseward@acm.org>
```

bzip2 uses the Burrows-Wheeler block-sorting text compression algorithm to achieve better compression ratios than gzip. It can be used to compress a wide variety of file types, including text files, binary files, and even multimedia files.

To get a quick overview of the available bzip2 options, you can use the `--help` flag:

```bash
bzip2 --help
```

This will display a list of the most commonly used bzip2 options and their descriptions.

Now, let's create a sample file to practice compression and decompression with bzip2:

```bash
echo "This is a sample text file to be compressed with bzip2." > sample.txt
```
