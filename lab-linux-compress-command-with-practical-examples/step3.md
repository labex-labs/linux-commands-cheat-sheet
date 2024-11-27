# Explore Advanced Options of compress Command

In this step, we will explore some advanced options of the `compress` command.

The `compress` command has several options that allow you to customize the compression process. Some of the commonly used options are:

- `-c`: Write output to standard output instead of replacing the original file.
- `-f`: Force compression, even if the compressed file is larger than the original.
- `-v`: Verbose mode, display the compression ratio.
- `-b`: Set the block size (default is 16K).

Let's try out some of these options:

Compress a file and write the output to standard output:

```
$ compress -c example.txt
This is a sample text file.
```

Force compression even if the compressed file is larger:

```
$ compress -f example.txt
$ ls -l
-rw-r--r-- 1 labex labex 27 Apr 17 08:36 example.txt
-rw-r--r-- 1 labex labex 32 Apr 17 08:36 example.txt.Z
```

Display the compression ratio in verbose mode:

```
$ compress -v example.txt
example.txt: 85.19% -- replaced with example.txt.Z
```

Set the block size to 8K:

```
$ compress -b 8 example.txt
$ ls -l
-rw-r--r-- 1 labex labex 27 Apr 17 08:36 example.txt
-rw-r--r-- 1 labex labex 28 Apr 17 08:36 example.txt.Z
```

These are just a few examples of the advanced options available with the `compress` command. Experiment with different options to find the ones that work best for your needs.
