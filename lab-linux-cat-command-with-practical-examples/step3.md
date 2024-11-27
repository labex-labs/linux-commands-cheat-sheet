# Append Text to Existing Files

In this step, you will learn how to use the `cat` command to append text to existing files.

Let's start by creating a new file called `file3.txt` with some initial content:

```
# Create file3.txt with initial content
echo "This is the first line of file3.txt." > file3.txt
```

Now, you can use the `cat` command to append additional text to the file:

```
# Append text to file3.txt
cat >> file3.txt
This is the second line of file3.txt.
This is the third line of file3.txt.
```

Press `Ctrl+D` to save the changes and exit the `cat` command.

You can now verify the contents of `file3.txt`:

```
# Display the contents of file3.txt
cat file3.txt
```

Example output:

```
This is the first line of file3.txt.
This is the second line of file3.txt.
This is the third line of file3.txt.
```

As you can see, the `cat` command has appended the new lines of text to the existing `file3.txt` file.

You can also use the `>>` operator to append text to a file directly from the command line:

```
# Append text to file3.txt using the >> operator
echo "This is the fourth line of file3.txt." >> file3.txt
```

Now, let's verify the contents of `file3.txt` again:

```
# Display the contents of file3.txt
cat file3.txt
```

Example output:

```
This is the first line of file3.txt.
This is the second line of file3.txt.
This is the third line of file3.txt.
This is the fourth line of file3.txt.
```

The `cat` command has successfully appended the new line of text to the existing `file3.txt` file.
