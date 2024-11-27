# Understand the Purpose and Syntax of the tail Command

In this step, you will learn about the purpose and basic syntax of the `tail` command in Linux. The `tail` command is used to display the last few lines of a file or the output of a command.

The basic syntax of the `tail` command is:

```
tail [options] [file]
```

The most common options for the `tail` command are:

- `-n`: Specifies the number of lines to display. For example, `tail -n 5 file.txt` will display the last 5 lines of the file.
- `-f`: Follows the file, continuously displaying new lines as they are added to the file. This is useful for monitoring log files.

Example usage:

```
$ tail -n 3 file.txt
This is the third line.
This is the second line.
This is the first line.
```

Example output:

```
This is the third line.
This is the second line.
This is the first line.
```

The `tail` command is commonly used to view the end of log files, which can be helpful for troubleshooting and monitoring system activity.
