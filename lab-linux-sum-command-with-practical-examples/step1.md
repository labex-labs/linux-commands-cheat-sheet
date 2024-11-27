# Understand the sum Command

In this step, we will explore the `sum` command in Linux, which is used to calculate the checksum of a file or a group of files. The `sum` command generates a checksum value that can be used to verify the integrity of data during file transfers or backups.

Let's start by understanding the basic syntax of the `sum` command:

```
sum [options] [file1] [file2] ...
```

The available options for the `sum` command include:

- `-r`: Use the BSD algorithm for checksum calculation.
- `-s`: Display the total sum of all input files.
- `-w`: Use the System V algorithm for checksum calculation.

To calculate the checksum of a single file, you can use the following command:

```
sum file.txt
```

Example output:

```
12345 3 file.txt
```

The output shows the checksum value (12345), the number of blocks (3), and the filename (file.txt).

To calculate the checksum of multiple files, you can simply list the files as arguments:

```
sum file1.txt file2.txt file3.txt
```

Example output:

```
12345 3 file1.txt
67890 2 file2.txt
54321 4 file3.txt
```

The `sum` command can also be used to display the total sum of all input files using the `-s` option:

```
sum -s file1.txt file2.txt file3.txt
```

Example output:

```
84576 9 total
```

In the next step, we will practice using the `sum` command to perform basic summation operations.
