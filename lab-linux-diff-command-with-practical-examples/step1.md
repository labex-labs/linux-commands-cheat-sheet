# Understand the Purpose and Syntax of the diff Command

In this step, you will learn about the purpose and basic syntax of the `diff` command in Linux. The `diff` command is a powerful tool used to compare the contents of two files and display the differences between them.

First, let's create two sample text files to work with:

```bash
cd ~/project
echo "This is file1.txt" > file1.txt
echo "This is file2.txt" > file2.txt
```

Now, let's use the `diff` command to compare the two files:

```bash
diff file1.txt file2.txt
```

Example output:

```
1c1
< This is file1.txt
---
> This is file2.txt
```

The output shows that the first line (1c1) of the two files is different. The `<` symbol indicates the line from the first file, and the `>` symbol indicates the line from the second file.

The basic syntax of the `diff` command is:

```
diff [options] file1 file2
```

Here, `file1` and `file2` are the two files you want to compare.

Some common options for the `diff` command include:

- `-c`: Display the differences in a context format, showing the lines around the changes.
- `-u`: Display the differences in a unified format, showing the lines around the changes.
- `-r`: Recursively compare directories and their contents.
- `-w`: Ignore white space differences.

We will explore more advanced options of the `diff` command in the next step.
