# Understand the mcd Command

In this step, you will learn about the `mcd` command in Linux, which stands for "make and change directory". The `mcd` command allows you to create a new directory and change the current working directory to the newly created directory in a single command.

To use the `mcd` command, simply provide the path of the directory you want to create. For example, to create a new directory named "example" in the current working directory, you can run:

```
mcd example
```

This will create the "example" directory and change the current working directory to it.

Example output:

```
labex@ubuntu:~/project$ mcd example
labex@ubuntu:~/project/example$
```

The `mcd` command is particularly useful when you need to create a series of nested directories. Instead of running multiple `mkdir` commands, you can use `mcd` to create the directories and navigate to the desired location in a single step.

For example, to create the directory structure `~/project/example/subdir1/subdir2`, you can run:

```
mcd project/example/subdir1/subdir2
```

This will create all the necessary directories and change the current working directory to `~/project/example/subdir1/subdir2`.

Example output:

```
labex@ubuntu:~/project$ mcd project/example/subdir1/subdir2
labex@ubuntu:~/project/example/subdir1/subdir2$
```

The `mcd` command is a convenient tool for efficient directory management in Linux. In the next step, you will learn how to combine `mcd` with other Linux commands for more advanced file and directory operations.
