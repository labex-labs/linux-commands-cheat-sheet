# Decompress a Gzipped File Using the uncompress Command

In this step, we will learn how to use the `uncompress` command to decompress a Gzipped file.

First, let's create a sample Gzipped file to work with:

```bash
echo "This is a sample text file." > sample.txt
gzip sample.txt
```

Now, we can use the `uncompress` command to decompress the Gzipped file:

```bash
uncompress sample.txt.gz
```

Example output:

```
sample.txt
```

As you can see, the `uncompress` command has decompressed the `sample.txt.gz` file and created the original `sample.txt` file.

Let's verify the contents of the decompressed file:

```bash
cat sample.txt
```

Example output:

```
This is a sample text file.
```

The `uncompress` command has successfully decompressed the Gzipped file, and we can now access the original file contents.
