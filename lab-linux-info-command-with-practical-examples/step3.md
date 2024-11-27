# Apply the info Command to Retrieve Information About Linux Commands and Utilities

Now that you're familiar with the `info` command and its navigation techniques, let's put your knowledge into practice by using the `info` command to retrieve information about various Linux commands and utilities.

First, let's try to find information about the `ls` command:

```
$ info ls
```

This will open the `info` page for the `ls` command, where you can read about its usage, options, and related information.

Example output:

```
File: dir,  Node: ls,  Up: Directory listing

ls: List directory contents
*****************************

The 'ls' command lists information about files (of any type, including
directories).

Synopsis:
  ls [OPTION]... [FILE]...

Options:
  -a, --all                  do not hide entries starting with .
  -A, --almost-all           do not list implied . and ..
  -b, --escape               print octal escapes for nongraphic characters
  -B, --ignore-backups       do not list implied entries ending with ~
  -c                         with -lt: sort by, and show, ctime (time of last
                             modification of file status information)
                             with -l: show ctime and sort by name
                             otherwise: sort by ctime
...
```

As you can see, the `info` command provides detailed information about the `ls` command, including its synopsis, options, and related details.

You can also use the `info` command to find information about other Linux commands and utilities. For example:

```
$ info cd
$ info mkdir
$ info grep
```

Each of these commands will open the corresponding `info` page, allowing you to explore the details of the command.

Remember, you can use the navigation commands you learned in the previous step to move around the `info` system, such as `n` to go to the next node, `p` to go to the previous node, and `u` to go up to the parent node.
