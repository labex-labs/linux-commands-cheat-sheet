# Compare Compressed Files Using the zdiff Command

In this step, you will learn how to use the `zdiff` command to compare the contents of compressed files.

First, let's create two compressed files that we can use for the comparison:

```
# Create two sample compressed files
echo "This is the content of file1.gz." | gzip > file1.gz
echo "This is the content of file2.gz." | gzip > file2.gz
```

Now, let's use the `zdiff` command to compare the two files:

```
zdiff file1.gz file2.gz
```

The output will show the differences between the two files:

```
1c1
< This is the content of file1.gz.
---
> This is the content of file2.gz.
```

This output indicates that the first line of the two files differs.

You can also use the `zdiff` command with various options to customize the output:

```
# Output a unified diff
zdiff -u file1.gz file2.gz

# Output a context diff
zdiff -c file1.gz file2.gz
```

The `-u` option outputs a unified diff, while the `-c` option outputs a context diff. These different output formats can be useful for different scenarios, depending on your needs.

Example output for unified diff:

```
--- file1.gz
+++ file2.gz
@@ -1 +1 @@
-This is the content of file1.gz.
+This is the content of file2.gz.
```

Example output for context diff:

```
*** file1.gz
--- file2.gz
***************
*** 1 ****
! This is the content of file1.gz.
--- 1 ----
! This is the content of file2.gz.
```
