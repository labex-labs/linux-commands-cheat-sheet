# Persist Aliases Across Shell Sessions

In the previous step, you learned how to create and manage aliases in the current shell session. However, these aliases are temporary and will be lost once the shell session is closed. In this step, you will learn how to persist aliases across shell sessions.

To make aliases persistent, you need to add them to the shell's configuration file, such as `.bashrc` or `.zshrc`, depending on the shell you are using. This way, the aliases will be loaded and available every time you start a new shell session.

Let's start by creating a new alias for the `mkdir` command:

```bash
alias mkd='mkdir -p'
```

This alias will create a new directory and any necessary parent directories with a single command.

Now, to make this alias persistent, you need to add it to your shell's configuration file. If you are using the `zsh` shell, the configuration file is located at `~/.zshrc`. You can open this file with a text editor:

```bash
nano ~/.zshrc
```

At the end of the file, add the following line:

```
alias mkd='mkdir -p'
```

Save the file and exit the editor.

From now on, the `mkd` alias will be available in all your future shell sessions. To verify this, open a new terminal and try using the `mkd` alias:

```bash
mkd new_directory
```

This should create a new directory named `new_directory` and any necessary parent directories.

Example output:

```
$ alias mkd='mkdir -p'
$ mkd new_directory/subdirectory
$ ls -l
total 4
drwxr-xr-x 2 labex labex 4096 Apr 18 12:34 new_directory
```

In the example above, we first create the `mkd` alias, then use it to create a new directory with a subdirectory, and finally verify that the directory was created.
