# Understand the lsattr Command

In this step, you will learn about the `lsattr` command in Linux, which allows you to view the attributes of files and directories.

The `lsattr` command is used to list the extended attributes of one or more files. These extended attributes provide additional information about the file, such as whether the file is immutable, append-only, or has other special properties.

To use the `lsattr` command, simply run the following command in your terminal:

```
lsattr [filename]
```

Replace `[filename]` with the name of the file or directory you want to inspect.

Example output:

```
--------------e----------- file.txt
```

The output shows the file attributes for the `file.txt` file. The attributes are represented by a series of letters, where each letter represents a specific attribute. In this example, the `e` attribute indicates that the file has the "extent" attribute, which is used by some file systems to improve performance.

You can also use the `lsattr` command to list the attributes of all files in a directory by running the following command:

```
lsattr -R [directory]
```

Replace `[directory]` with the name of the directory you want to inspect. The `-R` option tells `lsattr` to recursively list the attributes of all files and directories within the specified directory.

Example output:

```
--------------e----------- file1.txt
--------------e----------- file2.txt
--------------e----------- subdir/file3.txt
```

This output shows the attributes of three files, including a file in a subdirectory.
