# Compress Files and Directories Using mzip

In this step, you will learn how to use the `mzip` command to compress files and directories.

First, let's create some sample files and directories to work with:

```bash
cd ~/project
mkdir sample_directory
touch sample_file1.txt sample_file2.txt
```

Now, let's compress the `sample_directory` and the two text files using the `mzip` command:

```bash
mzip -c sample_archive.mz sample_directory sample_file1.txt sample_file2.txt
```

This command will create a new archive file named `sample_archive.mz` and add the `sample_directory` and the two text files to the archive.

You can verify the contents of the archive using the `-l` (list) option:

```bash
mzip -l sample_archive.mz
```

Example output:

```
sample_directory/
sample_file1.txt
sample_file2.txt
```

To extract the contents of the archive, you can use the `-x` (extract) option:

```bash
mzip -x sample_archive.mz
```

This will extract all the files and directories from the `sample_archive.mz` archive to the current directory.

You can also use the `mzip` command to compress individual files or directories. For example, to compress a single file:

```bash
mzip -c sample_file.mz sample_file1.txt
```

And to compress a directory:

```bash
mzip -c sample_directory.mz sample_directory/
```

Remember, the `mzip` command is part of the `mtools` package, which provides a set of utilities for working with MS-DOS file systems. If you need to perform more advanced compression or archiving tasks, you may want to consider using other compression tools like `gzip`, `bzip2`, or `zip`.
