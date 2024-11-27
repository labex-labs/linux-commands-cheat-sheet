# Concatenate and Display Text Files

In this step, you will learn how to use the `cat` command to concatenate and display the contents of multiple text files.

Let's create two more sample text files:

```
# Create additional sample text files
echo "This is the first line of file1.txt." > file1.txt
echo "This is the second line of file1.txt." >> file1.txt

echo "This is the first line of file2.txt." > file2.txt
echo "This is the second line of file2.txt." >> file2.txt
```

Now, you can use the `cat` command to display the contents of these files:

```
# Display the contents of file1.txt
cat file1.txt

# Display the contents of file2.txt
cat file2.txt
```

Example output:

```
This is the first line of file1.txt.
This is the second line of file1.txt.
This is the first line of file2.txt.
This is the second line of file2.txt.
```

To concatenate the contents of multiple files, you can simply list the file names as arguments to the `cat` command:

```
# Concatenate the contents of file1.txt and file2.txt
cat file1.txt file2.txt
```

Example output:

```
This is the first line of file1.txt.
This is the second line of file1.txt.
This is the first line of file2.txt.
This is the second line of file2.txt.
```

As you can see, the `cat` command has combined the contents of `file1.txt` and `file2.txt` into a single output.
