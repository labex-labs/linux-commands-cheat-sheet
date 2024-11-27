# Change the Group Ownership of Multiple Files

In this step, we will learn how to change the group ownership of multiple files using the `chgrp` command.

Let's start by creating two new files in the `~/project` directory:

```
cd ~/project
touch file1.txt file2.txt
```

Now, let's check the current group ownership of the files:

```
ls -l file1.txt file2.txt
```

Example output:

```
-rw-r--r-- 1 labex labex 0 Apr 12 12:34 file1.txt
-rw-r--r-- 1 labex labex 0 Apr 12 12:34 file2.txt
```

As you can see, the group ownership of both `file1.txt` and `file2.txt` is set to the `labex` group.

To change the group ownership of both files to the `admin` group, we can use the `chgrp` command with multiple file arguments:

```
sudo chgrp admin file1.txt file2.txt
```

Example output:

```

```

Now, let's verify the group ownership of the files:

```
ls -l file1.txt file2.txt
```

Example output:

```
-rw-r--r-- 1 labex admin 0 Apr 12 12:34 file1.txt
-rw-r--r-- 1 labex admin 0 Apr 12 12:34 file2.txt
```

The output shows that the group ownership of both `file1.txt` and `file2.txt` has been changed to the `admin` group.

You can also use the `-R` option to recursively change the group ownership of all files and directories in a directory tree:

```
sudo chgrp -R admin ~/project
```

This command will change the group ownership of all files and directories in the `~/project` directory and its subdirectories to the `admin` group.
