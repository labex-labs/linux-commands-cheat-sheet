# Understand the Purpose and Syntax of the tee Command

In this step, you will learn about the purpose and syntax of the `tee` command in Linux. The `tee` command is a powerful tool that allows you to redirect the output of a command to both a file and the terminal at the same time.

The basic syntax of the `tee` command is:

```
tee [options] [file]
```

Here, the `[options]` can include:

- `-a`: Append the output to the specified file instead of overwriting it.
- `-i`: Ignore interrupt signals.

To understand the purpose of the `tee` command, let's consider an example. Suppose you want to run a command and save its output to a file, while also displaying the output in the terminal. You can use the `tee` command to achieve this:

```
$ ls -l | tee output.txt
total 0
-rw-r--r-- 1 labex labex 0 Apr 12 12:34 output.txt
```

In the above example, the output of the `ls -l` command is redirected to both the `output.txt` file and the terminal.

Example output:

```
total 0
-rw-r--r-- 1 labex labex 0 Apr 12 12:34 output.txt
```

The `tee` command is particularly useful when you want to view the output of a command while also saving it to a file for future reference.
