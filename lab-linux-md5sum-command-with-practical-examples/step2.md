# Generate MD5 Checksums for Files

In this step, you will learn how to generate MD5 checksums for files using the `md5sum` command.

First, let's create a few sample files to work with:

```bash
cd ~/project
echo "This is file1.txt" > file1.txt
echo "This is file2.txt" > file2.txt
echo "This is file3.txt" > file3.txt
```

Now, let's generate the MD5 checksums for these files:

```bash
md5sum file1.txt file2.txt file3.txt
```

Example output:

```
e10adc3949ba59abbe56e057f20f883e  file1.txt
c778c38f1bf5b425c468a45e316d71d2  file2.txt
5d41402abc4b2a76b9719d911017c592  file3.txt
```

The output shows the MD5 checksum for each file. You can use these checksums to verify the integrity of the files later.

You can also generate the checksums for all files in a directory using the following command:

```bash
md5sum *
```

This will generate the checksums for all files in the current directory.
