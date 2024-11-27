# Use fc to Edit and Reexecute Previous Commands

In this step, you will learn how to use the `fc` command to edit and reexecute previous commands in the Bash shell.

Let's start by checking the command history again:

```
$ history
 1 ls
 2 cd project
 3 touch file.txt
 4 echo "Hello, World!" > file.txt
 5 cat file.txt
 6 fc 4
```

As you can see, the previous step, we used `fc 4` to edit the command that created the `file.txt` file.

Now, let's say you want to edit and reexecute the `cat file.txt` command. You can do this using the `fc` command:

```
$ fc 5
# This will open the "cat file.txt" command in your default text editor
```

Make the desired changes to the command, save, and exit the editor. The edited command will be executed automatically.

Example output:

```
cat file.txt
Hello, World! Updated
```

You can also use the `fc` command without specifying a command number to edit the most recent command:

```
$ fc
# This will open the most recent command in your default text editor
```

The `fc` command is a powerful tool for improving your productivity in the terminal. By allowing you to easily edit and reexecute previous commands, it can save you time and reduce the risk of making mistakes when typing complex or long commands.
