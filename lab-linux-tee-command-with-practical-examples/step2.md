# Redirect Command Output to a File and the Terminal

In this step, you will learn how to use the `tee` command to redirect the output of a command to both a file and the terminal.

Let's start by creating a sample text file:

```
$ echo "This is a sample text file." > sample.txt
```

Now, let's use the `tee` command to redirect the output of the `cat` command to both the terminal and a new file:

```
$ cat sample.txt | tee output.txt
This is a sample text file.
```

In the above example, the output of the `cat sample.txt` command is redirected to both the `output.txt` file and the terminal.

Example output:

```
This is a sample text file.
```

You can also use the `-a` option to append the output to an existing file instead of overwriting it:

```
$ echo "Adding more content." | tee -a output.txt
Adding more content.
```

Now, let's verify the contents of the `output.txt` file:

```
$ cat output.txt
This is a sample text file.
Adding more content.
```

As you can see, the output has been appended to the `output.txt` file.
