# Exclude Specific Files and Directories from the mdu Command

In this step, you will learn how to exclude specific files and directories from the `mdu` command's disk usage calculation.

Let's create some additional files and directories in the `~/project` directory:

```
$ mkdir -p ~/project/temp ~/project/backup
$ touch ~/project/temp/file4.txt ~/project/backup/file5.txt
```

Now, let's run the `mdu` command to measure the disk usage of the `~/project` directory:

```
$ mdu ~/project
```

Example output:

```
12K	/home/labex/project/documents/file1.txt
12K	/home/labex/project/documents/file2.txt
12K	/home/labex/project/documents/file3.txt
12K	/home/labex/project/temp/file4.txt
12K	/home/labex/project/backup/file5.txt
84K	/home/labex/project
```

As you can see, the `mdu` command includes the disk usage of the `temp` and `backup` directories in the total disk usage of the `~/project` directory.

To exclude specific directories from the `mdu` command, you can use the `-x` option:

```
$ mdu -x ~/project/temp -x ~/project/backup ~/project
```

Example output:

```
12K	/home/labex/project/documents/file1.txt
12K	/home/labex/project/documents/file2.txt
12K	/home/labex/project/documents/file3.txt
60K	/home/labex/project
```

In this example, we used the `-x` option twice to exclude the `~/project/temp` and `~/project/backup` directories from the disk usage calculation.

You can also use the `-x` option to exclude specific files from the `mdu` command's output:

```
$ mdu -x ~/project/documents/file2.txt ~/project
```

Example output:

```
12K	/home/labex/project/documents/file1.txt
12K	/home/labex/project/documents/file3.txt
24K	/home/labex/project/documents
60K	/home/labex/project
```

By using the `-x` option, you can selectively exclude files and directories from the `mdu` command's disk usage calculation, allowing you to focus on the relevant information for your needs.
