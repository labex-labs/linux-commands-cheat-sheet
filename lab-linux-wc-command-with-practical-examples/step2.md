# Count Words, Lines, and Characters in a File

In this step, you will learn how to use the `wc` command to count the number of words, lines, and characters in a file.

Let's start by creating a new text file with some sample content:

```bash
cat > sample.txt <<EOF
This is the first line.
This is the second line.
This is the third line.
EOF
```

Now, let's use the `wc` command to count the words, lines, and characters in the `sample.txt` file:

```bash
wc sample.txt
```

Example output:

```
  3  9 66 sample.txt
```

The output shows that the file has 3 lines, 9 words, and 66 characters.

You can also use the `-l`, `-w`, and `-c` options to display only the specific count you're interested in:

```bash
wc -l sample.txt  # Count lines
wc -w sample.txt  # Count words
wc -c sample.txt  # Count characters
```

Example output:

```
3 sample.txt
9 sample.txt
66 sample.txt
```

The `wc` command can be especially useful when combined with other Linux commands, such as `find` or `grep`. For example, you can use `find` to count the total number of lines in all text files in a directory:

```bash
find . -type f -name "*.txt" -exec wc -l {} \; | awk '{total += $1} END {print total}'
```

This command will recursively search the current directory and its subdirectories for all `.txt` files, and then use `wc -l` to count the number of lines in each file. The `awk` command is then used to sum up the total number of lines.

Now that you've learned how to use the `wc` command to count words, lines, and characters in a file, let's move on to the next step, where you'll explore more advanced use cases for the `wc` command.
