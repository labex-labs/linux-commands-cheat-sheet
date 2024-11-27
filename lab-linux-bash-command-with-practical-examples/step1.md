# Navigating the File System with Basic Linux Commands

In this step, you will learn how to navigate the Linux file system using basic commands. We will cover essential commands like `ls`, `cd`, `pwd`, and `mkdir` to explore and manage directories and files.

First, let's check our current working directory using the `pwd` command:

```bash
pwd
```

Example output:

```
/home/labex/project
```

As you can see, the default working directory is `~/project`. Now, let's list the contents of the current directory using the `ls` command:

```bash
ls
```

Example output:

```
file1.txt  file2.txt  subdirectory
```

To change the current directory, we can use the `cd` command. Let's navigate to the `subdirectory`:

```bash
cd subdirectory
```

Now, let's list the contents of the `subdirectory`:

```bash
ls
```

Example output:

```
file3.txt  file4.txt
```

To go back to the parent directory, we can use `cd ..`:

```bash
cd ..
```

Let's create a new directory called `newdir` using the `mkdir` command:

```bash
mkdir newdir
```

Now, let's list the contents of the current directory again:

```bash
ls
```

Example output:

```
file1.txt  file2.txt  newdir  subdirectory
```

You have now learned how to navigate the Linux file system using basic commands like `ls`, `cd`, `pwd`, and `mkdir`.
