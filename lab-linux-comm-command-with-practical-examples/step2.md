# Compare and Contrast Two Sorted Files Using the comm Command

In this step, you will learn how to use the `comm` command to compare and contrast two sorted files.

First, let's create two sample text files, `file1.txt` and `file2.txt`, with some content:

```
$ cat > file1.txt
apple
banana
cherry
date
fig
$ cat > file2.txt
banana
cherry
date
grape
```

Now, let's use the `comm` command to compare the two files:

```
$ comm file1.txt file2.txt
        apple
banana
        cherry
date
        fig
        grape
```

The output shows:

- Lines that are unique to `file1.txt` (prefixed with a single tab)
- Lines that are unique to `file2.txt` (prefixed with a single tab)
- Lines that are common to both files (no prefix)

You can also use various options to customize the output:

- `comm -1 file1.txt file2.txt`: Suppress the column of lines unique to `file1.txt`
- `comm -2 file1.txt file2.txt`: Suppress the column of lines unique to `file2.txt`
- `comm -3 file1.txt file2.txt`: Suppress the column of lines common to both files

Example:

```
$ comm -1 -2 file1.txt file2.txt
date
$ comm -1 -3 file1.txt file2.txt
apple
fig
$ comm -2 -3 file1.txt file2.txt
banana
cherry
grape
```
