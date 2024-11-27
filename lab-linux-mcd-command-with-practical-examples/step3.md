# Combine mcd with Other Linux Commands

In this final step, you will learn how to combine the `mcd` command with other Linux commands to perform more advanced file and directory operations.

One common use case is to create a new file directly within a nested directory using `mcd`. For example, let's create a new file named "example.txt" in the `~/project/docs/guides/python` directory:

```
mcd project/docs/guides/python && touch example.txt
```

This command first uses `mcd` to navigate to the `~/project/docs/guides/python` directory, and then uses the `touch` command to create a new file named "example.txt" in that directory.

Example output:

```
labex@ubuntu:~/project$ mcd project/docs/guides/python && touch example.txt
labex@ubuntu:~/project/docs/guides/python$
```

You can also combine `mcd` with other commands like `ls`, `cat`, `vim`, and so on, to perform various file and directory operations within the newly created directories.

For instance, to create a new directory, navigate to it, and then create a file within that directory, you can use:

```
mcd project/docs/guides/java && mkdir example && cd example && touch file.txt
```

This command will:

1. Create the `java` directory inside `~/project/docs/guides/`
2. Change the current working directory to `~/project/docs/guides/java`
3. Create a new directory named `example`
4. Change the current working directory to `~/project/docs/guides/java/example`
5. Create a new file named `file.txt`

Example output:

```
labex@ubuntu:~/project$ mcd project/docs/guides/java && mkdir example && cd example && touch file.txt
labex@ubuntu:~/project/docs/guides/java/example$
```

By combining `mcd` with other Linux commands, you can streamline your file and directory management tasks, making your workflow more efficient and productive.
