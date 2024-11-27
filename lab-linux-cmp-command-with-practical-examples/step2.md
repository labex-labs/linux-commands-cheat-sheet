# Compare Two Text Files

In this step, you will learn how to use the `cmp` command to compare the contents of two text files.

First, let's create two text files with some differences:

```bash
echo "This is the content of file1.txt" > file1.txt
echo "This is the content of file2.txt" > file2.txt
```

Now, let's use the `cmp` command to compare the two files:

```bash
cmp file1.txt file2.txt
```

Example output:

```
file1.txt file2.txt differ: byte 25, line 1
```

The output shows that the two files differ at byte 25, which corresponds to the 25th character in the file. This is because the two files have different content starting from the 25th character.

You can also use the `-l` option to display the byte number and the differing bytes for each difference:

```bash
cmp -l file1.txt file2.txt
```

Example output:

```
25 164 163
```

This output indicates that the files differ at byte 25, where the bytes are 164 and 163 (in octal).

If the files are identical, the `cmp` command will not output anything, as the `-s` (silent) option is the default behavior when the files are the same.

```bash
echo "This is the content of file3.txt" > file3.txt
cmp file1.txt file3.txt
```

No output means the files are identical.
