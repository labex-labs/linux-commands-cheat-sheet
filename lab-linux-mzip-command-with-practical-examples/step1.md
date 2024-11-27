# Understand the mzip Command

In this step, you will learn about the `mzip` command, which is a utility for compressing and extracting files and directories in Linux. The `mzip` command is a part of the `mtools` package, which provides a set of utilities for working with MS-DOS file systems.

To begin, let's install the `mtools` package on our Ubuntu 22.04 Docker container:

```bash
sudo apt-get update
sudo apt-get install -y mtools
```

Now, let's explore the basic usage of the `mzip` command:

```bash
mzip --help
```

Example output:

```
mzip version 4.0.26
Usage: mzip [-acdfhlLmMnqrtTvVwxz] [-b <bytes>] [-C <dir>] [-o <file>] [-p <password>] [-s <size>] file1 [file2 ...]
```

The `mzip` command supports a variety of options for compressing and extracting files and directories. Some of the most commonly used options are:

- `-a`: Append to an existing archive
- `-c`: Create a new archive
- `-d`: Delete files from an archive
- `-f`: Force overwrite of existing files
- `-l`: List the contents of an archive
- `-x`: Extract files from an archive

To create a new archive, you can use the `-c` option followed by the name of the archive file and the files or directories you want to compress:

```bash
mzip -c myarchive.mz file1.txt file2.txt directory1/
```

This command will create a new archive file named `myarchive.mz` and add the files `file1.txt`, `file2.txt`, and the contents of the `directory1/` directory to the archive.

To extract files from an archive, you can use the `-x` option followed by the name of the archive file:

```bash
mzip -x myarchive.mz
```

This command will extract all the files and directories from the `myarchive.mz` archive to the current directory.

In the next step, you will learn how to use the `mzip` command to compress and extract files and directories in more detail.
