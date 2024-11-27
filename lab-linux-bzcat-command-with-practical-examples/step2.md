# Decompress Gzipped Files Using bzcat

In this step, you will learn how to use the `bzcat` command to decompress Gzipped files.

Gzip is a popular compression format used in Linux and Unix-like systems. The `bzcat` command can be used to view the contents of Gzipped files without extracting them.

Let's start by creating a Gzipped file:

```bash
# Create a sample text file
echo "This is a sample text file." > sample.txt

# Compress the file using Gzip
gzip sample.txt
```

Now, let's use the `bzcat` command to view the contents of the Gzipped file:

```bash
# View the contents of the Gzipped file using bzcat
bzcat sample.txt.gz
```

Example output:

```
This is a sample text file.
```

As you can see, the `bzcat` command allows you to view the contents of the Gzipped file without extracting it to disk.
