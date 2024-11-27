# Compare Two Text Files Using the sdiff Command

In this step, we will learn how to use the `sdiff` command to compare two text files and understand the differences between them.

First, let's create two sample text files with some differences:

```
# Create two sample text files
echo "This is line 1 in file1.txt" > file1.txt
echo "This is line 1 in file2.txt" > file2.txt
echo "This is line 2 in file1.txt" >> file1.txt
echo "This is line 2 in file2.txt" >> file2.txt
```

Now, let's use the `sdiff` command to compare the two files:

```
sdiff file1.txt file2.txt
```

Example output:

```
This is line 1 in file1.txt This is line 1 in file2.txt
This is line 2 in file1.txt This is line 2 in file2.txt
```

The output shows the differences between the two files. The left column displays the content of `file1.txt`, and the right column displays the content of `file2.txt`. The differences are highlighted, making it easy to identify the changes.

You can also use various options with the `sdiff` command to customize the output:

```
# Display only the left side of the differences
sdiff -l file1.txt file2.txt

# Display only the right side of the differences
sdiff -r file1.txt file2.txt

# Suppress the output of common lines
sdiff -s file1.txt file2.txt
```

By understanding how to use the `sdiff` command, you can effectively compare and merge text files, making it a valuable tool for text processing and editing tasks.
