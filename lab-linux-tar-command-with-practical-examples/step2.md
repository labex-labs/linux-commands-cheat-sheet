# Create and Extract tar Archives

In this step, we will learn how to create and extract tar archives with more advanced options.

First, let's create a tar archive with compression using the `gzip` utility:

```
cd ~/project
mkdir compressed
touch compressed/file1.txt compressed/file2.txt compressed/file3.txt
tar -czf archive.tar.gz compressed/
```

Example output:

```
compressed/file1.txt
compressed/file2.txt
compressed/file3.txt
```

In this example, we used the `-z` option to compress the archive using gzip. The resulting file is `archive.tar.gz`.

Now, let's extract the contents of the compressed archive:

```
tar -xzf archive.tar.gz
```

Example output:

```
compressed/file1.txt
compressed/file2.txt
compressed/file3.txt
```

The `-x` option extracts the files from the archive, and the `-z` option decompresses the archive using gzip.

Next, let's create a tar archive that includes multiple directories:

```
cd ~/project
mkdir dir1 dir2
touch dir1/file1.txt dir1/file2.txt dir2/file3.txt dir2/file4.txt
tar -cvf multi_dir.tar dir1/ dir2/
```

Example output:

```
dir1/
dir1/file1.txt
dir1/file2.txt
dir2/
dir2/file3.txt
dir2/file4.txt
```

In this example, we included two directories (`dir1` and `dir2`) in the tar archive.

Finally, let's extract the contents of the multi-directory archive:

```
tar -xvf multi_dir.tar
```

Example output:

```
dir1/
dir1/file1.txt
dir1/file2.txt
dir2/
dir2/file3.txt
dir2/file4.txt
```

The `tar` command allows you to create and extract archives with various options to suit your needs.
