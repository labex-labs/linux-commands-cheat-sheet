# Understand the Purpose and Syntax of the cat Command

In this step, you will learn about the purpose and basic syntax of the `cat` command in Linux. The `cat` command is a versatile tool that allows you to concatenate and display the contents of text files.

The basic syntax of the `cat` command is as follows:

```
cat [options] [file(s)]
```

Here, `[options]` represents any optional flags or parameters you can use with the `cat` command, and `[file(s)]` represents the file(s) you want to concatenate and display.

Some common options for the `cat` command include:

- `-n`: Displays the output with line numbers.
- `-E`: Displays a $ character at the end of each line.
- `-s`: Squeezes multiple adjacent empty lines into one.

To see the `cat` command in action, let's create a sample text file and use the `cat` command to display its contents.

```
# Create a sample text file
echo "This is the first line." > sample.txt
echo "This is the second line." >> sample.txt
echo "This is the third line." >> sample.txt

# Display the contents of the file using cat
cat sample.txt
```

Example output:

```
This is the first line.
This is the second line.
This is the third line.
```

As you can see, the `cat` command simply displays the contents of the `sample.txt` file.
