# Merge Conflicting Files Using diff3

In this step, you will learn how to use the `diff3` command to merge conflicting files.

Let's create three files with some conflicting changes:

```
$ cd ~/project
$ echo "Line 1" > file1.txt
$ echo "Line 2" >> file1.txt
$ echo "Line 3" >> file1.txt

$ echo "Line 1" > file2.txt
$ echo "Line 2 - Modified" >> file2.txt
$ echo "Line 4" >> file2.txt

$ echo "Line 1" > file3.txt
$ echo "Line 2 - Another Modification" >> file3.txt
$ echo "Line 3" >> file3.txt
```

Now, we can use the `diff3` command to merge these files:

```
$ diff3 file1.txt file2.txt file3.txt
=======
Line 1
Line 2 - Another Modification
Line 3
-------
Line 1
Line 2 - Modified
Line 4
```

The `diff3` command identifies the conflicting changes and presents them in a merged output. The lines starting with `=======` and `-------` indicate the conflicting sections.

To resolve the conflicts, you can manually edit the files and choose the desired changes.

Example output:

```
Line 1
Line 2 - Modified
Line 3
```

In this example, we have chosen to keep the modified version of "Line 2" from `file2.txt`.
