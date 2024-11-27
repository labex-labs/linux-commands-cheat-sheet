# Manage Files and Directories with Basic Linux Commands

In this step, you will learn how to manage files and directories using basic Linux commands. We will cover commands such as `ls`, `cd`, `mkdir`, `touch`, `rm`, and `mv`.

First, let's check the current working directory:

```bash
pwd
```

Example output:

```
/home/labex/project
```

As you can see, the default working directory is `~/project`.

Now, let's list the contents of the current directory:

```bash
ls
```

Example output:

```
file1.txt  file2.txt  directory1
```

To create a new directory, use the `mkdir` command:

```bash
mkdir directory2
```

You can now see the new directory in the list:

```bash
ls
```

Example output:

```
file1.txt  file2.txt  directory1  directory2
```

To create a new file, use the `touch` command:

```bash
touch file3.txt
```

You can verify the file was created by listing the directory contents again:

```bash
ls
```

Example output:

```
file1.txt  file2.txt  file3.txt  directory1  directory2
```

To move a file, use the `mv` command:

```bash
mv file3.txt directory1
```

Now, the `file3.txt` file has been moved to the `directory1` subdirectory:

```bash
ls
ls directory1
```

Example output:

```
file1.txt  file2.txt  directory1  directory2
file3.txt
```

Finally, to delete a file, use the `rm` command:

```bash
rm file1.txt
```

Verify the file has been deleted:

```bash
ls
```

Example output:

```
file2.txt  directory1  directory2
```

Great! You have now learned how to manage files and directories using basic Linux commands.
