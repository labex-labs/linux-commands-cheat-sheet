# Extract a Compressed File Using the bunzip2 Command

In this step, you will learn how to use the `bunzip2` command to extract a compressed file.

First, let's create a sample compressed file to work with. Run the following command to create a compressed file named `example.txt.bz2`:

```
echo "This is a sample text file." | bzip2 > example.txt.bz2
```

Now, to extract the compressed file, use the `bunzip2` command:

```
bunzip2 example.txt.bz2
```

This will create a new file named `example.txt` containing the decompressed data.

Example output:

```
$ bunzip2 example.txt.bz2
$ ls
example.txt
```

You can also use the `-k` option to keep the compressed file after decompression:

```
bunzip2 -k example.txt.bz2
$ ls
example.txt  example.txt.bz2
```

In this case, both the compressed `example.txt.bz2` and the decompressed `example.txt` files will be present in the directory.
