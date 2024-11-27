# Understand the Purpose of the uncompress Command

In this step, we will learn about the purpose of the `uncompress` command in Linux. The `uncompress` command is used to decompress files that have been compressed using the `compress` command, which is an older compression utility.

The `compress` command uses the Lempel-Ziv-Welch (LZW) compression algorithm to reduce the size of files. The resulting compressed files have a `.Z` extension. The `uncompress` command is used to restore the original file from the compressed `.Z` file.

Let's start by checking the version of the `uncompress` command:

```bash
uncompress --version
```

Example output:

```
uncompress (GNU gzip) 1.10
Copyright (C) 2019 Free Software Foundation, Inc.
This is free software.  You may redistribute copies of it under the terms of
the GNU General Public License <https://www.gnu.org/licenses/gpl.html>.
There is NO WARRANTY, to the extent permitted by law.

Written by Jean-loup Gailly.
```

As you can see, the `uncompress` command is part of the GNU gzip package, which is a widely-used compression and decompression utility in Linux.

Now, let's try decompressing a file using the `uncompress` command.
