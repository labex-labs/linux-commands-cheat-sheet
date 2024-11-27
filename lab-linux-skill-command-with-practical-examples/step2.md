# Understand and Use Redirection and Pipes in the Linux Terminal

In this step, you will learn how to use redirection and pipes in the Linux terminal. Redirection allows you to redirect the input or output of a command, while pipes allow you to chain multiple commands together.

Let's start by creating a sample text file:

```bash
echo "This is line 1" > file1.txt
echo "This is line 2" >> file1.txt
```

Now, let's display the contents of the file using the `cat` command:

```bash
cat file1.txt
```

Example output:

```
This is line 1
This is line 2
```

You can also use redirection to redirect the output of a command to a file:

```bash
ls > file_list.txt
```

Verify the file was created and contains the list of files:

```bash
cat file_list.txt
```

Example output:

```
file1.txt
file_list.txt
```

Next, let's use pipes to chain multiple commands together. For example, we can use the `grep` command to search for a specific word in the file:

```bash
cat file1.txt | grep "line"
```

Example output:

```
This is line 1
This is line 2
```

You can also use pipes to filter the output of one command and pass it as input to another command. For example, let's list all the files in the current directory and filter the output to only show directories:

```bash
ls | grep directory
```

Example output:

```
directory1
directory2
```

Great! You have now learned how to use redirection and pipes in the Linux terminal.
