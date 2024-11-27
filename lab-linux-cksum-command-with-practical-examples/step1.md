# Understand the cksum Command

In this step, you will learn about the `cksum` command in Linux, which is used to calculate the checksum of a file. The checksum is a unique numerical value that represents the contents of a file and can be used to verify the integrity of the file.

To understand the `cksum` command, let's start by running it on a file:

```bash
cksum file.txt
```

Example output:

```
2995857905 12 file.txt
```

The output of the `cksum` command consists of three parts:

1. The checksum value (2995857905 in the example)
2. The length of the file in bytes (12 in the example)
3. The filename (file.txt in the example)

The checksum value is a 32-bit cyclic redundancy check (CRC) value that is calculated based on the contents of the file. This value can be used to verify the integrity of the file by comparing it to the checksum of the original file.

The `cksum` command can also be used to calculate the checksum of multiple files at once:

```bash
cksum file1.txt file2.txt file3.txt
```

Example output:

```
2995857905 12 file1.txt
3456789012 34 file2.txt
6789012345 56 file3.txt
```

In this example, the `cksum` command calculates the checksum for each of the three files and displays the results.
