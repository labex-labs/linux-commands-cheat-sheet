# Understand the Purpose and Syntax of the join Command

In this step, you will learn about the purpose and syntax of the `join` command in Linux. The `join` command is used to merge two or more files based on a common field.

The basic syntax of the `join` command is:

```
join [options] file1 file2
```

The most common options are:

- `-t <char>`: Specify a delimiter character to use instead of the default whitespace.
- `-i` or `-I`: Ignore case when comparing fields.
- `-1 <field>`: Join on the specified field from the first file.
- `-2 <field>`: Join on the specified field from the second file.

Let's start by creating two sample files to demonstrate the `join` command:

```
$ cat file1.txt
1001 John
1002 Jane
1003 Bob
1004 Alice
```

```
$ cat file2.txt
1001 Sales
1002 Marketing
1003 IT
1004 HR
```

Example output:

```
1001 John Sales
1002 Jane Marketing
1003 Bob IT
1004 Alice HR
```

In the above example, the `join` command merges the two files based on the first field (the employee ID), creating a new line for each matching pair of records.
