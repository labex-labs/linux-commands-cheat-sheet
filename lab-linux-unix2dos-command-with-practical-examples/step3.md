# Handling Newline Characters in Text Files

In this step, you will learn how to handle newline characters in text files, which is an important aspect of text processing and editing.

As you've learned in the previous steps, the newline character is represented differently in Unix/Linux and Windows/DOS systems. In Unix, the newline is represented by a single `LF` (Line Feed) character, while in Windows/DOS, the newline is represented by a combination of `CR` (Carriage Return) and `LF` characters.

Let's create a sample text file with both Unix and DOS newline characters:

```bash
echo "This is a line with Unix newline." > sample_mixed.txt
echo -e "This is a line with DOS newline.\r\n" >> sample_mixed.txt
```

Now, let's examine the contents of the file:

```bash
cat sample_mixed.txt
```

Example output:

```
This is a line with Unix newline.
This is a line with DOS newline.
```

Notice the difference in the newline characters between the two lines.

To remove the `CR` characters and convert the file to the Unix newline format, you can use the `tr` command:

```bash
tr -d '\r' < sample_mixed.txt > sample_unix.txt
```

Let's verify the contents of the converted file:

```bash
cat sample_unix.txt
```

Example output:

```
This is a line with Unix newline.
This is a line with DOS newline.
```

The `tr` command removes all occurrences of the `\r` (Carriage Return) character from the input file and writes the result to the output file.

You can also use the `dos2unix` command, which is the opposite of `unix2dos`, to convert a file from DOS to Unix format:

```bash
dos2unix sample_mixed.txt sample_unix2.txt
```

Example output:

```
dos2unix: converting file sample_mixed.txt to Unix format...
```

Let's verify the contents of the `sample_unix2.txt` file:

```bash
cat sample_unix2.txt
```

Example output:

```
This is a line with Unix newline.
This is a line with DOS newline.
```

The `dos2unix` command has the same effect as using the `tr` command to remove the `CR` characters.
