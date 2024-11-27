# Understand the Basics of the cp Command

In this step, you will learn the basic usage of the `cp` command in Linux. The `cp` command is used to copy files and directories from one location to another.

Let's start by creating a sample file in the `~/project` directory:

```bash
touch ~/project/sample.txt
```

Now, let's copy the `sample.txt` file to a new file named `copy_of_sample.txt`:

```bash
cp ~/project/sample.txt ~/project/copy_of_sample.txt
```

Example output:

```

```

The basic syntax of the `cp` command is:

```
cp [options] source_file destination_file
```

Here, `source_file` is the file you want to copy, and `destination_file` is the new file that will be created.

You can also use the `cp` command to copy directories. Let's create a directory named `dir1` and copy it to `dir2`:

```bash
mkdir ~/project/dir1
cp -r ~/project/dir1 ~/project/dir2
```

The `-r` option is used to copy directories recursively, including all the files and subdirectories within the directory.

Example output:

```

```

That's the basic usage of the `cp` command. In the next steps, you will learn more advanced features of the `cp` command, such as preserving file attributes and timestamps.
