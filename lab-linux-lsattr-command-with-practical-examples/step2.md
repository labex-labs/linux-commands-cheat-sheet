# View File Attributes Using lsattr

In this step, you will learn how to use the `lsattr` command to view the attributes of files and directories in your Linux system.

First, let's create a few files and directories in the `~/project` directory:

```
cd ~/project
touch file1.txt file2.txt
mkdir subdir
touch subdir/file3.txt
```

Now, let's use the `lsattr` command to view the attributes of these files and directories:

```
lsattr file1.txt file2.txt subdir subdir/file3.txt
```

Example output:

```
--------------e----------- file1.txt
--------------e----------- file2.txt
--------------e----------- subdir
--------------e----------- subdir/file3.txt
```

The output shows the attributes of the files and directories. In this case, the `e` attribute is set, which indicates that the file or directory has the "extent" attribute.

You can also use the `-R` (recursive) option to view the attributes of all files and directories within a directory:

```
lsattr -R ~/project
```

Example output:

```
--------------e----------- file1.txt
--------------e----------- file2.txt
--------------e----------- subdir
--------------e----------- subdir/file3.txt
```

This command will recursively list the attributes of all files and directories within the `~/project` directory.
