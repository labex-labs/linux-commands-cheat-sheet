# Monitor File Changes with watch

In this step, you will learn how to use the `watch` command to monitor changes in files or directories.

The `watch` command can be used in conjunction with the `ls` (list directory contents) command to continuously display the contents of a directory and detect any changes.

First, let's create a directory and some files to monitor:

```
mkdir ~/project/files
touch ~/project/files/file1.txt ~/project/files/file2.txt
```

Now, to monitor the contents of the `~/project/files` directory, run the following command:

```
watch -n 5 'ls -l ~/project/files'
```

This will execute the `ls -l ~/project/files` command every 5 seconds and display the output in your terminal. The `-l` option to `ls` shows the long-format listing, which includes information such as file permissions, ownership, size, and modification time.

You can also use the `watch` command to monitor changes in a specific file. For example, to monitor the contents of the `file1.txt` file:

```
watch -n 5 'cat ~/project/files/file1.txt'
```

This will display the contents of the `file1.txt` file every 5 seconds, and you'll be able to see any changes made to the file in real-time.

Example output:

```
Every 5.0s: ls -l ~/project/files                                    labex@ubuntu: Fri Apr 28 14:45:41 2023

total 0
-rw-r--r-- 1 labex labex 0 Apr 28 14:44 file1.txt
-rw-r--r-- 1 labex labex 0 Apr 28 14:44 file2.txt
```

The `watch` command allows you to continuously monitor files and directories, making it easier to detect changes or modifications to your system's files.
