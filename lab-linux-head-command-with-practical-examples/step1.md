# Understand the head Command

In this step, you will learn about the `head` command in Linux, which is used to display the first few lines of a file. The `head` command is a useful tool for quickly viewing the contents of a file, especially when dealing with large files.

To use the `head` command, simply type `head` followed by the filename. For example:

```bash
head example.txt
```

This will display the first 10 lines of the `example.txt` file.

Example output:

```
Line 1
Line 2
Line 3
Line 4
Line 5
Line 6
Line 7
Line 8
Line 9
Line 10
```

You can also specify the number of lines to display using the `-n` option. For example, to display the first 5 lines of the file:

```bash
head -n 5 example.txt
```

Example output:

```
Line 1
Line 2
Line 3
Line 4
Line 5
```

The `head` command is particularly useful when you need to quickly check the contents of a file, or when you want to view the top of a log file to see the most recent entries.
