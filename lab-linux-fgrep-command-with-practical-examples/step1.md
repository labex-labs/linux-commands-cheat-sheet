# Understand the Purpose and Syntax of the fgrep Command

In this step, you will learn about the purpose and syntax of the `fgrep` command in Linux. The `fgrep` command is a variant of the `grep` command that searches for fixed strings in text files, rather than regular expressions.

The syntax of the `fgrep` command is as follows:

```
fgrep [options] "search_string" file(s)
```

Here, the `search_string` is the fixed string you want to search for, and `file(s)` is the file or list of files you want to search in.

Some common options for the `fgrep` command include:

- `-i`: Ignore case when searching.
- `-v`: Invert the search, showing lines that do not match the search string.
- `-c`: Count the number of matching lines.
- `-n`: Display the line numbers of the matching lines.

Let's try some examples:

```
# Search for the string "example" in the file "example.txt"
fgrep "example" example.txt

Example output:
This is an example line.
This is another example line.
```

```
# Search for the string "ERROR" in all files in the current directory
fgrep "ERROR" *.txt

Example output:
file1.txt:Error: Something went wrong.
file2.txt:WARNING: This is not an error.
file3.txt:ERROR: File not found.
```

```
# Count the number of lines containing the string "hello"
fgrep -c "hello" example.txt

Example output:
4
```

In the next step, you will learn how to use the `fgrep` command to search for fixed strings in text files.
