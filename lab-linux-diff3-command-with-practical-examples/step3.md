# Resolve Conflicts in a Three-Way Merge

In this step, you will learn how to resolve conflicts in a three-way merge using the `diff3` command.

Let's continue with the previous example, where we have three files with conflicting changes:

```
$ cd ~/project
$ cat file1.txt
Line 1
Line 2
Line 3

$ cat file2.txt
Line 1
Line 2 - Modified
Line 4

$ cat file3.txt
Line 1
Line 2 - Another Modification
Line 3
```

To resolve the conflicts, we can use the `diff3` command with the `-m` option, which will show the merged output with conflict markers:

```
$ diff3 -m file1.txt file2.txt file3.txt
Line 1
<<<<<<< file1.txt
Line 2
=======
Line 2 - Another Modification
>>>>>>> file3.txt
Line 3
Line 4
```

The conflict markers `<<<<<<< file1.txt`, `=======`, and `>>>>>>> file3.txt` indicate the conflicting sections. You can now manually edit the file and choose the desired changes.

Let's resolve the conflict by keeping the modified version of "Line 2" from `file3.txt`:

```
$ cat resolved.txt
Line 1
Line 2 - Another Modification
Line 3
Line 4
```

Example output:

```
Line 1
Line 2 - Another Modification
Line 3
Line 4
```

Now, the conflicts have been resolved, and the merged file `resolved.txt` contains the desired changes.
