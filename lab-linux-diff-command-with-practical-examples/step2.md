# Compare Two Text Files Using the diff Command

In this step, you will learn how to use the `diff` command to compare the contents of two text files and understand the output.

First, let's create two new text files with some differences:

```bash
cd ~/project
echo "This is line 1 in file1.txt" > file1.txt
echo "This is line 1 in file2.txt" > file2.txt
echo "This is line 2 in file1.txt" >> file1.txt
echo "This is line 2 in file2.txt" >> file2.txt
```

Now, let's use the `diff` command to compare the two files:

```bash
diff file1.txt file2.txt
```

Example output:

```
1c1
< This is line 1 in file1.txt
---
> This is line 1 in file2.txt
2c2
< This is line 2 in file1.txt
---
> This is line 2 in file2.txt
```

The output shows the differences between the two files. The `1c1` line indicates that the first line in `file1.txt` is different from the first line in `file2.txt`. The `<` symbol shows the line from `file1.txt`, and the `>` symbol shows the line from `file2.txt`.

Similarly, the `2c2` line indicates that the second line in `file1.txt` is different from the second line in `file2.txt`.

You can also use the `-c` or `-u` options to display the differences in a more readable format:

```bash
diff -c file1.txt file2.txt
```

Example output:

```
*** file1.txt	2023-04-24 11:46:27.000000000 +0000
--- file2.txt	2023-04-24 11:46:32.000000000 +0000
***************
*** 1 ****
! This is line 1 in file1.txt
--- 1 ----
! This is line 1 in file2.txt
***************
** 2 ****
! This is line 2 in file1.txt
-- 2 ----
! This is line 2 in file2.txt
```

The `-c` option displays the differences in a context format, showing the lines around the changes.
