# Introduction to the mren Command

In this step, you will learn about the `mren` command, which is a powerful tool for renaming multiple files in Linux. The `mren` command allows you to rename files based on patterns, making it a useful tool for batch file renaming operations.

First, let's create some sample files to work with:

```bash
cd ~/project
touch file1.txt file2.txt file3.txt file4.txt file5.txt
```

Example output:

```
labex@ubuntu:~/project$ ls
file1.txt  file2.txt  file3.txt  file4.txt  file5.txt
```

Now, let's use the `mren` command to rename these files. The basic syntax for `mren` is:

```bash
mren 'pattern' 'replacement' files...
```

Here, `pattern` is the search pattern to match the files, and `replacement` is the new name format.

For example, to rename all the files with the prefix "file" to "myfile":

```bash
mren 'file(\d+).txt' 'myfile\1.txt' *.txt
```

Example output:

```
labex@ubuntu:~/project$ ls
myfile1.txt  myfile2.txt  myfile3.txt  myfile4.txt  myfile5.txt
```

As you can see, the `mren` command has renamed all the files with the "file" prefix to "myfile" with the corresponding number.

The `mren` command supports regular expressions, which allows for more advanced file renaming operations. We will explore this in the next step.
