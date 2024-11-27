# Advanced mren Usage with Regular Expressions

In this final step, we will explore some more advanced use cases of the `mren` command, leveraging the power of regular expressions.

Let's start by creating a set of files with a more complex naming structure:

```bash
cd ~/project
touch report_2023-01-01.txt report_2023-01-02.txt report_2023-01-03.txt
touch report_2023-02-01.txt report_2023-02-02.txt report_2023-02-03.txt
touch report_2023-03-01.txt report_2023-03-02.txt report_2023-03-03.txt
```

Example output:

```
labex@ubuntu:~/project$ ls
report_2023-01-01.txt  report_2023-02-01.txt  report_2023-03-01.txt
report_2023-01-02.txt  report_2023-02-02.txt  report_2023-03-02.txt
report_2023-01-03.txt  report_2023-02-03.txt  report_2023-03-03.txt
```

Now, let's say we want to rename these files to have a more consistent format, like "report_2023_01_01.txt", "report_2023_02_01.txt", and so on. We can use the `mren` command with a more complex regular expression pattern:

```bash
mren 'report_(\d{4})-(\d{2})-(\d{2}).txt' 'report_\1_\2_\3.txt' *.txt
```

Example output:

```
labex@ubuntu:~/project$ ls
report_2023_01_01.txt  report_2023_02_01.txt  report_2023_03_01.txt
report_2023_01_02.txt  report_2023_02_02.txt  report_2023_03_02.txt
report_2023_01_03.txt  report_2023_02_03.txt  report_2023_03_03.txt
```

In this example, the regular expression pattern `'report_(\d{4})-(\d{2})-(\d{2}).txt'` captures the year, month, and day components of the filename, and the replacement string `'report_\1_\2_\3.txt'` uses these captured groups to construct the new filename format.

The `mren` command is a powerful tool that can handle a wide range of file renaming tasks, from simple batch renames to complex operations using regular expressions. By mastering the `mren` command, you can streamline your file management workflows and save time on repetitive tasks.
