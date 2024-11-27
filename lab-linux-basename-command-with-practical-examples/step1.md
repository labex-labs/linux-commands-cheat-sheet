# Understand the basename Command

In this step, you will learn about the `basename` command in Linux. The `basename` command is used to extract the filename from a full file path.

First, let's create a sample file path:

```
cd ~/project
mkdir -p files/subdir
touch files/subdir/example.txt
```

Now, let's use the `basename` command to extract the filename from the full path:

```
basename files/subdir/example.txt
```

Example output:

```
example.txt
```

As you can see, the `basename` command extracts the filename `example.txt` from the full path `files/subdir/example.txt`.

You can also use `basename` to extract the directory name from a full path:

```
basename files/subdir
```

Example output:

```
subdir
```

In this case, the `basename` command extracts the directory name `subdir` from the full path `files/subdir`.

The `basename` command is a useful tool for working with files and directories in the Linux command line. It can be combined with other commands to perform more complex file and directory operations.
