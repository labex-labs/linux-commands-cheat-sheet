# Split a File into Multiple Parts Using csplit

In this step, you will learn how to use the `csplit` command to split a file into multiple parts based on specified patterns or line numbers.

First, let's create a sample file to work with:

```
echo "START
This is the first part.
END
START
This is the second part.
END
START
This is the third part.
END" > large_file.txt
```

Now, let's split the `large_file.txt` file into multiple files based on the lines containing the word "START":

```
csplit large_file.txt '/START/' '{*}'
```

This will create the following files:

```
$ ls
large_file.txt  xx00  xx01  xx02
```

The `csplit` command has created three new files: `xx00`, `xx01`, and `xx02`, each containing the content between the "START" lines in the original file.

You can also customize the output file names by using the `-f` option. For example, to use the prefix "part" instead of the default "xx", you can run:

```
csplit large_file.txt '/START/' -f 'part' '{*}'
```

This will create the following files:

```
$ ls
large_file.txt  part00  part01  part02
```

The `csplit` command is a powerful tool for splitting files into smaller, more manageable pieces. You can use it to split files based on patterns, line numbers, or even custom expressions.

Example output:

```
$ csplit large_file.txt '/START/' '{*}'
xx00
xx01
xx02
```
