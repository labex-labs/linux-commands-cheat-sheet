# Manage Attributes for Multiple Files and Directories

In this final step, we will explore how to use the `mattrib` command to manage file and directory attributes for multiple items at once.

First, let's create a few more files and directories to work with:

```
touch file1.txt file2.txt file3.txt
mkdir dir1 dir2 dir3
```

Now, let's set the hidden attribute on all the files:

```
sudo mattrib -h file1.txt file2.txt file3.txt
```

Example output:

```
Attributes of file1.txt changed.
Attributes of file2.txt changed.
Attributes of file3.txt changed.
```

You can verify the attribute changes using the `ls -a` command:

```
ls -a
```

Example output:

```
. .. .file1.txt .file2.txt .file3.txt dir1 dir2 dir3
```

Next, let's set the read-only attribute on all the directories:

```
sudo mattrib -r dir1 dir2 dir3
```

Example output:

```
Attributes of dir1 changed.
Attributes of dir2 changed.
Attributes of dir3 changed.
```

You can verify the attribute changes using the `ls -l` command:

```
ls -l
```

Example output:

```
dr-xr-xr-x 2 labex labex 4096 Apr 12 12:34 dir1
dr-xr-xr-x 2 labex labex 4096 Apr 12 12:34 dir2
dr-xr-xr-x 2 labex labex 4096 Apr 12 12:34 dir3
-rw-r--r-- 1 labex labex    0 Apr 12 12:34 .file1.txt
-rw-r--r-- 1 labex labex    0 Apr 12 12:34 .file2.txt
-rw-r--r-- 1 labex labex    0 Apr 12 12:34 .file3.txt
```

The `mattrib` command allows you to easily manage file and directory attributes for multiple items at once, making it a powerful tool for file and directory management.
