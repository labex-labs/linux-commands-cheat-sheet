# Explore Advanced bzip2 Options and Techniques

In this final step, you will explore some advanced options and techniques with the bzip2 command.

One useful option is the ability to specify the compression level. bzip2 supports compression levels from 1 (fastest, but less compression) to 9 (slowest, but maximum compression). To use a specific compression level, you can add the `-#` flag, where `#` is the compression level. For example, to use the maximum compression level:

```bash
bzip2 -9 sample.txt
```

Another advanced technique is to create a bzip2 archive, which is similar to a tar archive but with the added benefit of compression. To create a bzip2 archive, you can use the following command:

```bash
bzip2 -z sample.txt sample2.txt
```

This will create a file named `sample.txt.bz2` that contains both `sample.txt` and `sample2.txt` in a compressed format.

To extract the files from the bzip2 archive, use the following command:

```bash
bzip2 -d sample.txt.bz2
```

This will decompress the archive and extract the original files.

You can also use bzip2 in combination with other tools, such as `tar`, to create compressed archives. For example:

```bash
tar -cjf archive.tar.bz2 sample.txt sample2.txt
```

This will create a tar archive named `archive.tar.bz2` that contains `sample.txt` and `sample2.txt`, with the files compressed using bzip2.
