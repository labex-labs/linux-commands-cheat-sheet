# Compress and Decompress Files Using gzip

In this step, we will learn how to use the `gzip` command to compress and decompress files.

To compress a file using `gzip`, simply run the following command:

```
gzip example.txt
```

This will create a compressed file named `example.txt.gz`. The original `example.txt` file will be replaced by the compressed version.

Example output:

```
example.txt:   21.0% -- replaced with example.txt.gz
```

To decompress a gzipped file, use the `-d` option:

```
gzip -d example.txt.gz
```

This will extract the original `example.txt` file from the compressed `example.txt.gz` file.

Example output:

```
example.txt.gz:   21.0% -- replaced with example.txt
```

You can also use the `gunzip` command as a shorthand for `gzip -d`:

```
gunzip example.txt.gz
```

This will have the same effect as the previous `gzip -d` command.
