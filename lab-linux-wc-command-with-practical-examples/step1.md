# Understand the wc Command

In this step, you will learn about the `wc` (word count) command in Linux. The `wc` command is a powerful tool that allows you to count the number of lines, words, and characters in a file.

To get started, let's create a sample text file:

```bash
echo "This is a sample text file." > sample.txt
```

Now, let's use the `wc` command to count the number of lines, words, and characters in the `sample.txt` file:

```bash
wc sample.txt
```

Example output:

```
  1  7 28 sample.txt
```

The output shows that the file has 1 line, 7 words, and 28 characters.

You can also use the `-l`, `-w`, and `-c` options to display only the specific count you're interested in:

```bash
wc -l sample.txt  # Count lines
wc -w sample.txt  # Count words
wc -c sample.txt  # Count characters
```

Example output:

```
1 sample.txt
7 sample.txt
28 sample.txt
```

The `wc` command can also be used with other Linux commands, such as `ls` or `find`, to count the lines, words, or characters in the output. For example:

```bash
ls -l | wc -l  # Count the number of files in the current directory
find . -type f | wc -l  # Count the number of files in the current directory and its subdirectories
```

Now that you have a basic understanding of the `wc` command, let's move on to the next step, where you'll learn how to use it to count words, lines, and characters in a file.
