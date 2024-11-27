# Explore the Basic Usage of the tail Command

In this step, you will explore the basic usage of the `tail` command, including displaying a specific number of lines, following a file, and using the `tail` command with other commands.

First, let's create a sample text file to work with:

```
$ echo "Line 1" > sample.txt
$ echo "Line 2" >> sample.txt
$ echo "Line 3" >> sample.txt
$ echo "Line 4" >> sample.txt
$ echo "Line 5" >> sample.txt
```

Now, let's use the `tail` command to display the last 3 lines of the file:

```
$ tail -n 3 sample.txt
Line 3
Line 4
Line 5
```

Example output:

```
Line 3
Line 4
Line 5
```

Next, let's use the `-f` option to follow the file and see new lines as they are added:

```
$ tail -f sample.txt
Line 1
Line 2
Line 3
Line 4
Line 5
```

Press Ctrl+C to stop following the file.

You can also use the `tail` command with other commands, such as `grep` to search for specific lines:

```
$ cat sample.txt | grep "Line 3"
Line 3
```

Example output:

```
Line 3
```

In this way, you can use the `tail` command to quickly view and monitor the contents of files, especially log files, which can be helpful for troubleshooting and debugging.
