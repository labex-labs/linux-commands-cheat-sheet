# Understand the Purpose of the fmt Command

In this step, you will learn about the purpose and usage of the `fmt` command in Linux. The `fmt` command is a powerful tool for formatting text files, allowing you to adjust the width and alignment of text.

The `fmt` command is commonly used to:

- Reformat text files to a specified width
- Remove extra whitespace and line breaks
- Align text in a consistent manner

Let's start by creating a sample text file that we'll use throughout this lab:

```bash
echo "This is a sample text file with some long lines that need to be formatted." > sample.txt
```

Example output:

```
This is a sample text file with some long lines that need to be formatted.
```

Now, let's use the `fmt` command to format the text file:

```bash
fmt sample.txt
```

Example output:

```
This is a sample text file with some long lines
that need to be formatted.
```

As you can see, the `fmt` command has automatically reformatted the text to fit within the default line width of 75 characters.
