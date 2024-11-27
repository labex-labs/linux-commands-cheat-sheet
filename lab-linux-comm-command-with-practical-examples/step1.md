# Understand the Purpose and Syntax of the comm Command

In this step, you will learn about the purpose and syntax of the `comm` command in Linux. The `comm` command is a powerful tool used to compare and contrast two sorted files, line by line.

The basic syntax of the `comm` command is:

```
comm [options] file1 file2
```

Here, `file1` and `file2` are the two sorted files you want to compare.

The `comm` command outputs three columns:

1. Lines that are unique to `file1`
2. Lines that are unique to `file2`
3. Lines that are common to both `file1` and `file2`

By default, all three columns are displayed. You can use various options to customize the output.

Example output:

```
$ comm file1.txt file2.txt
        apple
banana
        cherry
date
        fig
```

In this example, the lines "apple", "cherry", and "fig" are unique to `file1.txt`, the line "banana" is unique to `file2.txt`, and the line "date" is common to both files.
