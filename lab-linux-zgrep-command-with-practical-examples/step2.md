# Decompress and Search Compressed Files

In this step, you will learn how to decompress compressed files and then search for patterns within them using the `grep` command.

First, let's create another compressed file that we can use for our examples:

```bash
# Create another compressed file
echo "This is another sample text file." | gzip > another.txt.gz
```

Now, let's decompress the file using the `zcat` command and then search for a pattern using `grep`:

```bash
# Decompress the file and search for "sample"
zcat another.txt.gz | grep "sample"
```

Example output:

```
This is another sample text file.
```

As you can see, the `zcat` command decompresses the file, and the `grep` command searches the decompressed output for the pattern "sample".

You can also use the `zless` command to view the contents of a compressed file without fully decompressing it:

```bash
# View the contents of the compressed file
zless another.txt.gz
```

This will allow you to navigate through the file and search for patterns interactively, without the need to decompress the entire file.

Now, let's combine the `zgrep` command from the previous step with the `zcat` command to search a compressed file directly:

```bash
# Search the compressed file directly using zgrep
zgrep "sample" another.txt.gz
```

Example output:

```
This is another sample text file.
```

The `zgrep` command allows you to search the compressed file without the need to decompress it first, making the process more efficient.
