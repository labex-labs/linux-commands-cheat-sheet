# Compare Compressed Files Using bzcmp

In this step, we will learn how to use the `bzcmp` command to compare the contents of compressed files.

First, let's create two sample compressed files that we can use for the comparison:

```bash
# Create sample compressed files
echo "This is file1.bz2" | bzip2 > file1.bz2
echo "This is file2.bz2" | bzip2 > file2.bz2
```

Now, let's use the `bzcmp` command to compare the two compressed files:

```bash
bzcmp file1.bz2 file2.bz2
```

Example output:

```
file1.bz2 is different from file2.bz2
```

As you can see, the `bzcmp` command has identified that the two compressed files have different contents.

You can also use the `--verbose` option to get more detailed information about the differences:

```bash
bzcmp --verbose file1.bz2 file2.bz2
```

Example output:

```
file1.bz2 is different from file2.bz2
0a1
> This is file2.bz2
```

The output shows that the first line (0a1) of the files is different, with file2.bz2 containing the line "This is file2.bz2".

If the files are identical, `bzcmp` will not output anything, indicating that the files are the same.
