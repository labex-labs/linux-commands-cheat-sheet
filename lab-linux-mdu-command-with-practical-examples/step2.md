# Measure the Disk Usage of a Directory

In this step, you will learn how to use the `mdu` command to measure the disk usage of a directory in your Linux environment.

First, let's create a sample directory and some files to work with:

```
$ mkdir -p ~/project/documents
$ touch ~/project/documents/file1.txt ~/project/documents/file2.txt ~/project/documents/file3.txt
```

Now, let's use the `mdu` command to measure the disk usage of the `~/project/documents` directory:

```
$ mdu ~/project/documents
```

Example output:

```
12K	/home/labex/project/documents/file1.txt
12K	/home/labex/project/documents/file2.txt
12K	/home/labex/project/documents/file3.txt
36K	/home/labex/project/documents
```

The output shows the disk usage of each file in the `~/project/documents` directory, as well as the total disk usage of the directory itself.

You can also use the `-h` option to display the disk usage in a more human-readable format:

```
$ mdu -h ~/project/documents
```

Example output:

```
12K	/home/labex/project/documents/file1.txt
12K	/home/labex/project/documents/file2.txt
12K	/home/labex/project/documents/file3.txt
36K	/home/labex/project/documents
```

In this example, the disk usage is displayed in kilobytes (K), making it easier to understand the actual size of the files and directory.

By using the `mdu` command with the appropriate options, you can effectively measure the disk usage of directories and files in your Linux environment.
