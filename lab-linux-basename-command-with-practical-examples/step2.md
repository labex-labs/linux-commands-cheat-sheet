# Use basename to Extract Filename from Full Path

In this step, you will learn how to use the `basename` command to extract the filename from a full file path.

Let's start by creating some sample files and directories:

```
cd ~/project
mkdir -p files/docs files/images
touch files/docs/report.txt files/images/photo.jpg
```

Now, let's use the `basename` command to extract the filenames from the full paths:

```
basename files/docs/report.txt
basename files/images/photo.jpg
```

Example output:

```
report.txt
photo.jpg
```

As you can see, the `basename` command extracts the filenames `report.txt` and `photo.jpg` from the respective full paths.

You can also use `basename` to extract the directory name from a full path:

```
basename files/docs
basename files/images
```

Example output:

```
docs
images
```

In this case, the `basename` command extracts the directory names `docs` and `images` from the full paths.

The `basename` command is a powerful tool for working with files and directories in the Linux command line. It can be combined with other commands to perform more complex operations.
