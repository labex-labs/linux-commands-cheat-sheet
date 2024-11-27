# Understand the Purpose and Syntax of the dirs Command

In this step, you will learn about the purpose and syntax of the `dirs` command in Linux. The `dirs` command is used to display the contents of the directory stack, which is a list of directories that you have navigated to during your current shell session.

To begin, open a terminal and navigate to the `~/project` directory:

```bash
cd ~/project
```

Now, let's explore the `dirs` command:

```bash
dirs
```

This will display the current contents of the directory stack. Since you just opened the terminal, the output should be:

```
 ~/project
```

The `dirs` command without any options simply displays the current directory stack.

You can also use the `dirs` command with the following options:

- `-c`: Clears the directory stack.
- `-l`: Displays the full paths in the directory stack.
- `-p`: Displays one directory per line.
- `-v`: Displays the directory stack with line numbers.

For example, try the following:

```bash
dirs -l
```

This will display the full path of the current directory in the stack:

```
 /home/labex/project
```

Now, let's add some directories to the stack using the `pushd` command:

```bash
pushd /tmp
pushd /var/log
pushd /etc
```

After running these commands, the directory stack will look like this:

```
 /etc
 /var/log
 /tmp
 /home/labex/project
```

You can see the updated stack by running `dirs` again.
