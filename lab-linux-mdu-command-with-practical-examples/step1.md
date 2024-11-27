# Understand the Purpose and Syntax of the mdu Command

In this step, you will learn about the purpose and syntax of the `mdu` command in Linux. The `mdu` command, also known as the "Disk Usage" command, is a utility that allows you to measure the disk usage of directories and files.

To understand the purpose of the `mdu` command, let's first explore its syntax:

```
mdu [options] [directory]
```

The basic syntax of the `mdu` command includes the following:

- `mdu`: The command name.
- `[options]`: Optional flags or parameters that modify the behavior of the command.
- `[directory]`: The directory or file path you want to measure the disk usage for.

Some common options for the `mdu` command include:

- `-h`: Display the disk usage in human-readable format (e.g., KB, MB, GB).
- `-s`: Display the total size of the directory, instead of the individual file sizes.
- `-x`: Exclude directories on different file systems.
- `-a`: Include all files, even those with leading dots (hidden files).

Let's try running the `mdu` command with some of these options:

```
$ mdu -h ~/project
```

Example output:

```
1.2M	/home/labex/project
```

In this example, we used the `-h` option to display the disk usage in a human-readable format. The output shows that the `~/project` directory is using 1.2 MB of disk space.

```
$ mdu -s ~/project
```

Example output:

```
1.2M	/home/labex/project
```

In this example, we used the `-s` option to display the total size of the `~/project` directory, instead of the individual file sizes.

Understanding the purpose and syntax of the `mdu` command will help you effectively measure the disk usage of directories and files in your Linux environment.
