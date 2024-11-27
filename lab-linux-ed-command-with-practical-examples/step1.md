# Introduction to the ed Command

In this step, you will learn about the basic usage of the `ed` command, a powerful line-oriented text editor in Unix-like operating systems. The `ed` command is a powerful tool for editing text files directly from the command line, and it can be particularly useful for scripting and automation tasks.

First, let's start by checking the version of `ed` installed in our Ubuntu 22.04 Docker container:

```bash
ed --version
```

Example output:

```
GNU ed version 1.17
```

The `ed` command is a line-oriented text editor, which means that you interact with it by entering commands that operate on the current line or a range of lines. To start the `ed` editor, simply type `ed` in the terminal:

```bash
ed
```

This will open the `ed` editor, and you can now enter commands to manipulate the text. Some basic `ed` commands include:

- `a`: Append text after the current line
- `c`: Change the current line
- `d`: Delete the current line
- `i`: Insert text before the current line
- `l`: List the current line
- `p`: Print the current line
- `q`: Quit the `ed` editor

For example, let's create a new file called `example.txt` and add some text to it:

```bash
ed example.txt
a
This is a sample text file.
This is the second line.
.
w
q
```

In this example, we:

- Opened the `ed` editor and specified the file `example.txt`
- Used the `a` command to append two lines of text
- Ended the append mode by entering a single period (`.`)
- Wrote the changes to the file using the `w` command
- Quit the `ed` editor using the `q` command

Now, let's verify that the file was created and contains the expected content:

```bash
cat example.txt
```

Example output:

```
This is a sample text file.
This is the second line.
```

In the next step, you will learn how to edit existing text files using the `ed` command.
