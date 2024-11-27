# Explore head Command Options

In this step, you will explore the various options available with the `head` command to customize its behavior.

One useful option is `-c`, which allows you to display a specific number of bytes instead of lines. For example, to display the first 20 bytes of a file:

```bash
head -c 20 example.txt
```

Example output:

```
Line 1
Line
```

Another option is `-q`, which suppresses the filename header when multiple files are specified. This is useful when you want to concatenate the output of `head` for multiple files:

```bash
head -q -n 3 file1.txt file2.txt file3.txt
```

Example output:

```
Line 1 from file1.txt
Line 2 from file1.txt
Line 3 from file1.txt
Line 1 from file2.txt
Line 2 from file2.txt
Line 3 from file2.txt
Line 1 from file3.txt
Line 2 from file3.txt
Line 3 from file3.txt
```

You can also use the `-v` option to display the filename header, even when there is only one file:

```bash
head -v -n 3 example.txt
```

Example output:

```
==> example.txt <==
Line 1
Line 2
Line 3
```

Exploring these options will help you use the `head` command more effectively in your text processing and editing tasks.
