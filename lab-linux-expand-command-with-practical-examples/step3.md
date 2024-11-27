# Expand Tabs to Spaces in Multiple Files

In this step, you will learn how to use the `expand` command to convert tabs to spaces in multiple files.

First, let's create a few sample files with tabs:

```
$ cat > file1.txt
Hello	World
$ cat > file2.txt
  This	is a	test file.
$ cat > file3.txt
A	B	C
```

Now, to convert the tabs to spaces in all three files, you can run the `expand` command with the file names as arguments:

```
$ expand file1.txt file2.txt file3.txt
Hello    World
  This is a    test file.
A    B    C
```

Example output:

```
Hello    World
  This is a    test file.
A    B    C
```

As you can see, the tabs have been replaced with the equivalent number of spaces in all three files.

If you want to save the expanded files, you can use the `-o` option to specify the output file names:

```
$ expand file1.txt -o file1_expanded.txt
$ expand file2.txt -o file2_expanded.txt
$ expand file3.txt -o file3_expanded.txt
```

Now, you can check the contents of the expanded files:

```
$ cat file1_expanded.txt
Hello    World
$ cat file2_expanded.txt
  This is a    test file.
$ cat file3_expanded.txt
A    B    C
```

The original files (`file1.txt`, `file2.txt`, `file3.txt`) remain unchanged, and the expanded versions are saved as `file1_expanded.txt`, `file2_expanded.txt`, and `file3_expanded.txt`.
