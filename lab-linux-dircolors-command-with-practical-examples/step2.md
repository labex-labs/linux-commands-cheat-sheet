# Customize Directory and File Colors

In this step, you will learn how to customize the colors for directories and files using the `dircolors` command.

First, let's create a custom `.dircolors` configuration file in your `~/project` directory:

```bash
nano ~/.dircolors
```

Add the following content to the file:

```
# Custom dircolors configuration
NORMAL 00
FILE 00
DIR 01;32
LINK 01;36
EXEC 01;33
```

This configuration sets the following color settings:

- Normal files: default color (00)
- Directories: bold green (01;32)
- Symbolic links: bold cyan (01;36)
- Executable files: bold yellow (01;33)

Save and exit the file.

Now, let's apply the new color settings:

```bash
eval $(dircolors ~/.dircolors)
```

You should now see the directory and file colors change in your terminal.

To make the changes permanent, you can add the `eval $(dircolors ~/.dircolors)` command to your `~/.bashrc` or `~/.zshrc` file, depending on your shell.

Let's verify the changes:

```bash
ls -l ~/project
```

Example output:

```
total 0
drwxr-xr-x 2 labex labex 4096 Apr 18 12:34 [1;32mdirectory[0m
-rw-r--r-- 1 labex labex    0 Apr 18 12:34 [0mfile.txt[0m
lrwxrwxrwx 1 labex labex    5 Apr 18 12:34 [1;36msymlink[0m -> file.txt
-rwxr-xr-x 1 labex labex    0 Apr 18 12:34 [1;33mexecutable[0m
```

As you can see, the directory, symbolic link, and executable file are now displayed in the custom colors you set in the `.dircolors` file.
