# Understand the Purpose and Syntax of the tac Command

In this step, you will learn about the purpose and syntax of the `tac` command in Linux. The `tac` command is used to reverse the order of lines in a text file, effectively printing the file in reverse order.

The basic syntax of the `tac` command is:

```
tac [OPTION] [FILE]
```

Here, `[OPTION]` represents any optional flags or parameters, and `[FILE]` is the name of the file you want to reverse.

Some common options for the `tac` command include:

- `-b, --before`: Attach the separator, instead of appending it
- `-r, --regex`: Interpret the separator as a regular expression
- `-s, --separator=STRING`: Use STRING as the line separator instead of newline

To see the `tac` command in action, let's create a sample text file and reverse its contents:

```
echo -e "Line 1\nLine 2\nLine 3\nLine 4" > sample.txt
tac sample.txt
```

Example output:

```
Line 4
Line 3
Line 2
Line 1
```

As you can see, the `tac` command has reversed the order of the lines in the `sample.txt` file.
