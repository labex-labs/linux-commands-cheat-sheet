# Decompress Multiple Files with bunzip2 Command

In this step, you will learn how to use the `bunzip2` command to decompress multiple compressed files at once.

First, let's create a few sample compressed files:

```
echo "This is file 1." | bzip2 > file1.txt.bz2
echo "This is file 2." | bzip2 > file2.txt.bz2
echo "This is file 3." | bzip2 > file3.txt.bz2
```

Now, to decompress all the files, you can use the following command:

```
bunzip2 *.bz2
```

This will decompress all the files with the `.bz2` extension in the current directory.

Example output:

```
$ bunzip2 *.bz2
$ ls
file1.txt  file2.txt  file3.txt
```

As you can see, the compressed files (`file1.txt.bz2`, `file2.txt.bz2`, and `file3.txt.bz2`) have been decompressed, and the resulting files (`file1.txt`, `file2.txt`, and `file3.txt`) are now present in the directory.

You can also use the `-k` option to keep the compressed files after decompression:

```
bunzip2 -k *.bz2
$ ls
file1.txt  file1.txt.bz2  file2.txt  file2.txt.bz2  file3.txt  file3.txt.bz2
```

In this case, both the compressed and decompressed files are present in the directory.
