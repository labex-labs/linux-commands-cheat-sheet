# Extract Compressed Files and Directories with mzip

In the previous step, you learned how to use the `mzip` command to compress files and directories. In this step, you will learn how to extract the contents of an `mzip` archive.

First, let's create a new `mzip` archive:

```bash
cd ~/project
mzip -c sample_archive.mz sample_directory sample_file1.txt sample_file2.txt
```

Now, let's extract the contents of the `sample_archive.mz` archive:

```bash
mzip -x sample_archive.mz
```

This command will extract all the files and directories from the `sample_archive.mz` archive to the current directory.

You can verify the extracted contents by listing the files and directories in the current directory:

```bash
ls -l
```

Example output:

```
total 8
drwxr-xr-x 2 labex labex 4096 Apr 26 12:34 sample_directory
-rw-r--r-- 1 labex labex    0 Apr 26 12:34 sample_file1.txt
-rw-r--r-- 1 labex labex    0 Apr 26 12:34 sample_file2.txt
```

As you can see, the `sample_directory` and the two text files have been extracted from the `sample_archive.mz` archive.

You can also extract specific files or directories from the archive using the `mzip` command. For example, to extract only the `sample_directory` from the archive:

```bash
mzip -x sample_archive.mz sample_directory/
```

This command will extract the `sample_directory` and its contents from the `sample_archive.mz` archive.

Remember, the `mzip` command is part of the `mtools` package, which provides a set of utilities for working with MS-DOS file systems. If you need to perform more advanced extraction or archiving tasks, you may want to consider using other tools like `tar`, `unzip`, or `gunzip`.
