# Create and Manage Multiple Directories Using mdel

In this step, you will learn how to create and manage multiple directories using the `mdel` command.

First, let's create a few directories in the `~/project` directory:

```
mdel dir1 dir2 dir3
```

Example output:

```
~/project/dir1
~/project/dir2
~/project/dir3
```

As you can see, the `mdel` command created all three directories at once.

Now, let's create a more complex directory structure using the `-p` option:

```
mdel -p dir1/subdir1 dir1/subdir2 dir2/subdir1
```

Example output:

```
~/project/dir1
~/project/dir1/subdir1
~/project/dir1/subdir2
~/project/dir2
~/project/dir2/subdir1
```

The `-p` option ensures that any necessary intermediate directories are created automatically.

To verify the directories that have been created, you can use the `ls` command:

```
ls -l ~/project
```

Example output:

```
total 12
drwxrwxr-x 3 labex labex 4096 Apr 12 12:34 dir1
drwxrwxr-x 2 labex labex 4096 Apr 12 12:34 dir2
drwxrwxr-x 3 labex labex 4096 Apr 12 12:34 dir3
```

You can also use the `-v` option to see the names of the directories as they are created:

```
mdel -v dir4 dir5 dir6
```

Example output:

```
~/project/dir4
~/project/dir5
~/project/dir6
```

In the next step, you will explore more advanced options and scenarios of the `mdel` command.
