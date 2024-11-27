# Understand the Purpose and Syntax of the sdiff Command

In this step, we will learn about the purpose and syntax of the `sdiff` command in Linux. The `sdiff` command is a powerful tool used to compare and merge text files, highlighting the differences between them.

The basic syntax of the `sdiff` command is as follows:

```
sdiff [options] file1 file2
```

Here, `file1` and `file2` are the two files you want to compare.

Some common options for the `sdiff` command include:

- `-s`: Suppress the output of common lines.
- `-w`: Set the width of the output.
- `-l`: List only the left side of the differences.
- `-r`: List only the right side of the differences.
- `-o output_file`: Write the merged output to the specified file.

To see the `sdiff` command in action, let's create two sample text files and compare them:

```
# Create two sample text files
echo "This is file1." > file1.txt
echo "This is file2." > file2.txt

# Compare the two files using sdiff
sdiff file1.txt file2.txt
```

Example output:

```
This is file1.        This is file2.
```

As you can see, the `sdiff` command highlights the differences between the two files, making it easy to identify and merge the changes.
