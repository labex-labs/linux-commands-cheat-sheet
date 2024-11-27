# Move Multiple Files to a New Directory

In this step, you will learn how to use the `mv` command to move multiple files to a new directory.

First, let's create some files in the `~/project` directory:

```
touch ~/project/file1.txt ~/project/file2.txt ~/project/file3.txt
```

Now, let's create a new directory to move the files to:

```
mkdir ~/project/new_dir
```

To move the files to the new directory, we can use the `mv` command:

```
mv ~/project/file1.txt ~/project/file2.txt ~/project/file3.txt ~/project/new_dir/
```

Example output:

```
No output, the files are moved
```

As you can see, we specified the source files and the destination directory in the `mv` command.

Let's verify that the files have been moved:

```
ls -l ~/project/new_dir
```

Example output:

```
-rw-r--r-- 1 labex labex 0 Apr 12 12:34 file1.txt
-rw-r--r-- 1 labex labex 0 Apr 12 12:34 file2.txt
-rw-r--r-- 1 labex labex 0 Apr 12 12:34 file3.txt
```

The output shows that the files `file1.txt`, `file2.txt`, and `file3.txt` have been moved to the `~/project/new_dir` directory.
