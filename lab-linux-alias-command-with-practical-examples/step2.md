# Create and Manage Aliases in the Current Shell Session

In this step, you will learn how to create and manage aliases in the current shell session.

First, let's create a simple alias to shorten the `ls -l` command:

```bash
alias ll='ls -l'
```

Now, whenever you type `ll` in the terminal, it will execute the `ls -l` command.

You can also create aliases for more complex commands or command sequences. For example, let's create an alias to quickly navigate to the `~/project` directory and list the contents:

```bash
alias projects='cd ~/project && ll'
```

Now, you can simply type `projects` to change to the `~/project` directory and list the files in long format.

To view the list of all aliases currently defined in your shell session, use the `alias` command without any arguments:

```bash
alias
```

This will display all the aliases you have created.

If you want to remove an alias, you can use the `unalias` command:

```bash
unalias ll
```

This will remove the `ll` alias from the current shell session.

Example output:

```
$ alias ll='ls -l'
$ ll
total 12
drwxr-xr-x 2 labex labex 4096 Apr 18 12:34 documents
drwxr-xr-x 2 labex labex 4096 Apr 18 12:34 downloads
drwxr-xr-x 2 labex labex 4096 Apr 18 12:34 pictures
$ alias projects='cd ~/project && ll'
$ projects
total 4
drwxr-xr-x 2 labex labex 4096 Apr 18 12:34 docs
drwxr-xr-x 2 labex labex 4096 Apr 18 12:34 src
$ unalias ll
$ ll
ls: cannot access 'll': No such file or directory
```

In the example above, we first create the `ll` alias, then the `projects` alias, and finally remove the `ll` alias.
