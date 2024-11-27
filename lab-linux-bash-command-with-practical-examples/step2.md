# Manipulating Files and Directories using Linux Commands

In this step, you will learn how to manipulate files and directories using essential Linux commands.

Let's start by creating a new file called `newfile.txt` using the `touch` command:

```bash
touch newfile.txt
```

Now, let's list the contents of the current directory to verify the file creation:

```bash
ls
```

Example output:

```
file1.txt  file2.txt  newdir  newfile.txt  subdirectory
```

To copy a file, we can use the `cp` command. Let's make a copy of `newfile.txt` and name it `copyfile.txt`:

```bash
cp newfile.txt copyfile.txt
```

Let's verify the copy:

```bash
ls
```

Example output:

```
file1.txt  copyfile.txt  file2.txt  newdir  newfile.txt  subdirectory
```

To move a file, we can use the `mv` command. Let's move `copyfile.txt` to the `newdir` directory:

```bash
mv copyfile.txt newdir/
```

Now, let's check the contents of the `newdir` directory:

```bash
ls newdir
```

Example output:

```
copyfile.txt
```

To delete a file, we can use the `rm` command. Let's delete the `newfile.txt` file:

```bash
rm newfile.txt
```

Verify the file deletion:

```bash
ls
```

Example output:

```
file1.txt  file2.txt  newdir  subdirectory
```

Finally, let's create a new directory called `newdir2` and then delete it using the `rmdir` command:

```bash
mkdir newdir2
ls
```

Example output:

```
file1.txt  file2.txt  newdir  newdir2  subdirectory
```

```bash
rmdir newdir2
ls
```

Example output:

```
file1.txt  file2.txt  newdir  subdirectory
```

You have now learned how to manipulate files and directories using commands like `touch`, `cp`, `mv`, `rm`, and `rmdir`.
