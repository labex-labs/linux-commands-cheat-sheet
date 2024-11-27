# Understand the Purpose and Syntax of the ulimit Command

In this step, we will learn about the purpose and syntax of the `ulimit` command in Linux. The `ulimit` command is used to set or display resource limits for the current shell session or for processes launched from the current shell.

The general syntax of the `ulimit` command is:

```
ulimit [options] [limit]
```

Here, `options` are the various options to control the resource limits, and `limit` is the value to be set for the specified resource.

Some common options for the `ulimit` command include:

- `-a`: Display all current resource limits.
- `-c`: Set the maximum size of core files created.
- `-d`: Set the maximum size of a process's data segment.
- `-f`: Set the maximum size of files created by the shell.
- `-n`: Set the maximum number of open file descriptors.
- `-s`: Set the maximum size of the stack segment.
- `-t`: Set the maximum amount of CPU time in seconds.

For example, to set the maximum size of core files to 10 MB, you can use the following command:

```
ulimit -c 10240
```

This will set the core file size limit to 10 MB (10240 KB).

Example output:

```
$ ulimit -c 10240
$ ulimit -c
10240
```

The output shows that the core file size limit has been set to 10240 KB (10 MB).
