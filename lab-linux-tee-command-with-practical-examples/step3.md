# Append Output to an Existing File with tee

In this step, you will learn how to use the `tee` command to append the output of a command to an existing file.

Let's start by creating a sample text file:

```
$ echo "This is the initial content." > sample.txt
```

Now, let's use the `tee -a` command to append the output of the `echo` command to the `sample.txt` file:

```
$ echo "Appending more content." | tee -a sample.txt
Appending more content.
```

The `-a` option tells the `tee` command to append the output to the file instead of overwriting it.

Let's verify the contents of the `sample.txt` file:

```
$ cat sample.txt
This is the initial content.
Appending more content.
```

As you can see, the new content has been appended to the existing file.

You can also use the `tee -a` command to append the output of a multi-line command to a file:

```
$ cat <<EOF | tee -a sample.txt
> This is the first line.
> This is the second line.
> This is the third line.
> EOF
This is the first line.
This is the second line.
This is the third line.
```

The output of the `cat` command with the here-document is appended to the `sample.txt` file.

Let's verify the contents of the `sample.txt` file again:

```
$ cat sample.txt
This is the initial content.
Appending more content.
This is the first line.
This is the second line.
This is the third line.
```

The new content has been successfully appended to the existing file.
