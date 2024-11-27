# Compare Compressed Files Using bzdiff

In this step, we will learn how to use the `bzdiff` command to compare the contents of compressed files in more detail.

First, let's create a few more compressed files to work with:

```bash
# Create another compressed file with different content
echo "This is the third file" | bzip2 > file3.txt.bz2

# Create a compressed file with the same content as file1.txt.bz2
echo "This is the first file" | bzip2 > file4.txt.bz2
```

Now, let's use the `bzdiff` command to compare these compressed files:

```bash
bzdiff file1.txt.bz2 file2.txt.bz2
bzdiff file1.txt.bz2 file3.txt.bz2
bzdiff file1.txt.bz2 file4.txt.bz2
```

Example output:

```
Files file1.txt.bz2 and file2.txt.bz2 differ
Files file1.txt.bz2 and file3.txt.bz2 differ
Files file1.txt.bz2 and file4.txt.bz2 are identical
```

The output shows that `file1.txt.bz2` and `file2.txt.bz2` have different contents, `file1.txt.bz2` and `file3.txt.bz2` have different contents, but `file1.txt.bz2` and `file4.txt.bz2` have the same contents.

The `bzdiff` command compares the contents of the compressed files without the need to decompress them first, making it a convenient tool for working with compressed data.
