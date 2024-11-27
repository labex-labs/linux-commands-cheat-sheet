# Explore Advanced Options of the diff Command

In this step, you will learn about some advanced options of the `diff` command to enhance its functionality.

Let's start by creating a new directory and some files to work with:

```bash
cd ~/project
mkdir dir1 dir2
echo "This is file1.txt in dir1" > dir1/file1.txt
echo "This is file2.txt in dir1" > dir1/file2.txt
echo "This is file1.txt in dir2" > dir2/file1.txt
echo "This is file2.txt in dir2" > dir2/file2.txt
```

Now, let's use the `-r` (recursive) option to compare the contents of the two directories:

```bash
diff -r dir1 dir2
```

Example output:

```
Only in dir1: file1.txt
Only in dir1: file2.txt
Only in dir2: file1.txt
Only in dir2: file2.txt
diff dir1/file1.txt dir2/file1.txt
1c1
< This is file1.txt in dir1
---
> This is file1.txt in dir2
diff dir1/file2.txt dir2/file2.txt
1c1
< This is file2.txt in dir1
---
> This is file2.txt in dir2
```

The `-r` option allows `diff` to recursively compare the contents of the two directories and their files.

Another useful option is `-w`, which ignores white space differences:

```bash
echo "  This is file3.txt in dir1  " > dir1/file3.txt
echo "This is file3.txt in dir2" > dir2/file3.txt
diff -w dir1/file3.txt dir2/file3.txt
```

Example output:

```
1c1
< This is file3.txt in dir1
---
> This is file3.txt in dir2
```

The `-w` option ensures that the differences in white space (e.g., leading/trailing spaces) are ignored.

You can also use the `diff` command to compare the contents of two directories and only show the files that are different:

```bash
diff -q dir1 dir2
```

Example output:

```
Files dir1/file1.txt and dir2/file1.txt differ
Files dir1/file2.txt and dir2/file2.txt differ
```

The `-q` option only shows the file names that are different, without displaying the actual differences.
