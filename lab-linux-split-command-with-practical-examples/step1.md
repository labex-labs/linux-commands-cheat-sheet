# Understand the Purpose and Syntax of the split Command

In this step, you will learn about the purpose and syntax of the `split` command in Linux. The `split` command is used to divide a file into smaller, more manageable pieces. This can be useful when working with large files or when you need to distribute a file across multiple systems.

The basic syntax of the `split` command is:

```
split [options] [input_file] [output_prefix]
```

Here's a breakdown of the command options:

- `options`: Specify how you want to split the file, such as by line count or by byte size.
- `input_file`: The file you want to split.
- `output_prefix`: The prefix for the output files.

For example, to split a file named `large_file.txt` into smaller files, each containing 100 lines, you would use the following command:

```
split -l 100 large_file.txt split_
```

This will create several files named `split_aa`, `split_ab`, `split_ac`, and so on, each containing 100 lines from the original file.

Example output:
```
$ ls -l
-rw-r--r-- 1 labex labex 1024 Apr 15 12:34 large_file.txt
$ split -l 100 large_file.txt split_
$ ls -l
-rw-r--r-- 1 labex labex  100 Apr 15 12:34 split_aa
-rw-r--r-- 1 labex labex  100 Apr 15 12:34 split_ab
-rw-r--r-- 1 labex labex  100 Apr 15 12:34 split_ac
-rw-r--r-- 1 labex labex 1024 Apr 15 12:34 large_file.txt
```

In the next step, you will learn how to split a file by line count and by byte size using the `split` command.

