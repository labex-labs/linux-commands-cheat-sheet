# Introduce the Linux compress Command

In this step, we will introduce the Linux `compress` command, which is used to compress and decompress files. The `compress` command is a classic compression utility that uses the Lempel-Ziv-Welch (LZW) compression algorithm.

To get started, let's first check the version of the `compress` command installed on our system:

```
$ compress --version
compress 4.3.1
```

The `compress` command is typically used to compress individual files or directories. The compressed files are given the extension `.Z`. For example, if we have a file named `example.txt`, the compressed version will be `example.txt.Z`.

To compress a file using the `compress` command, simply run:

```
$ compress example.txt
```

This will create the compressed file `example.txt.Z`.

To decompress a file, you can use the `uncompress` command:

```
$ uncompress example.txt.Z
```

This will create the original `example.txt` file.

Example output:

```
$ ls
example.txt  example.txt.Z
$ uncompress example.txt.Z
$ ls
example.txt
```

In the next step, we will explore more advanced options of the `compress` command.
