# Create and Manage Aliases in the Terminal

In this step, you will learn how to create and manage aliases in the Linux terminal.

Aliases are shortcuts or nicknames for commands that you use frequently. They can save you time and make your workflow more efficient.

Let's start by creating an alias for the `git status` command:

```bash
alias gs='git status'
```

Now, whenever you type `gs` in the terminal, it will execute the `git status` command.

Example output:

```
On branch main
Your branch is up to date with 'origin/main'.

nothing to commit, working tree clean
```

You can also create aliases for more complex commands. For example, let's create an alias for the `git commit -m` command:

```bash
alias gcm='git commit -m'
```

Now, you can use the `gcm` alias to commit changes with a message:

```bash
gcm "Update README.md"
```

Example output:

```
[main 1234567] Update README.md
 1 file changed, 1 insertion(+)
```

To view all the aliases you have created, you can use the `alias` command:

```bash
alias
```

Example output:

```
alias gs='git status'
alias gcm='git commit -m'
```

Aliases are stored in your shell configuration file, such as `.bashrc` or `.zshrc`, depending on the shell you are using. If you want the aliases to persist across sessions, you can add them to your shell configuration file.
