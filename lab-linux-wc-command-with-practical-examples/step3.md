# Combine wc with Other Linux Commands

In this step, you will learn how to combine the `wc` command with other Linux commands to perform more advanced text processing tasks.

Let's start by creating a directory with some sample text files:

```bash
mkdir sample_files
cd sample_files
echo "This is file1.txt" > file1.txt
echo "This is file2.txt" > file2.txt
echo "This is file3.txt" > file3.txt
```

Now, let's use the `find` command to count the total number of lines in all text files in the `sample_files` directory:

```bash
find . -type f -name "*.txt" -exec wc -l {} \; | awk '{total += $1} END {print total}'
```

Example output:

```
3
```

This command uses `find` to locate all files with the `.txt` extension in the current directory and its subdirectories, then uses `wc -l` to count the number of lines in each file. The `awk` command is used to sum up the total number of lines.

You can also use the `wc` command with `grep` to count the number of lines that match a specific pattern. For example, let's count the number of lines in the `sample_files` directory that contain the word "file":

```bash
grep -l "file" *.txt | wc -l
```

Example output:

```
3
```

This command uses `grep -l` to find all files in the current directory that contain the word "file", and then uses `wc -l` to count the number of matching files.

Finally, let's use the `wc` command to count the total number of words in all text files in the `sample_files` directory:

```bash
find . -type f -name "*.txt" -exec wc -w {} \; | awk '{total += $1} END {print total}'
```

Example output:

```
15
```

This command uses `find` to locate all text files in the directory, then uses `wc -w` to count the number of words in each file, and finally uses `awk` to sum up the total number of words.

By combining the `wc` command with other Linux commands, you can perform a wide range of text processing tasks, such as counting the number of files, lines, words, or characters in a directory or set of files.
