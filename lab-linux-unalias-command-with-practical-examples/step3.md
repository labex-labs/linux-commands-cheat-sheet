# Temporarily Disable Aliases Using the unalias Command

In this step, you will learn how to temporarily disable aliases using the `unalias` command.

First, let's create some aliases:

```bash
alias ll='ls -l'
alias rm='rm -i'
```

Now, when you run the `ll` command, it will execute the `ls -l` command, and when you run the `rm` command, it will execute the `rm -i` command.

Example output:

```
total 12
drwxr-xr-x 2 labex labex 4096 May 11 10:00 bin
drwxr-xr-x 3 labex labex 4096 May 11 10:00 project
-rw-r--r-- 1 labex labex   24 May 11 10:00 README.md
```

To temporarily disable the `ll` alias, you can use the `unalias` command:

```bash
unalias ll
ll
```

Example output:

```
bin  project  README.md
```

As you can see, the `unalias ll` command temporarily disables the `ll` alias, and the `ll` command now executes the original `ls -l` command.

You can also disable multiple aliases at once:

```bash
unalias ll rm
ll
rm README.md
```

Example output:

```
bin  project  README.md
rm: remove regular file 'README.md'?
```

In this example, both the `ll` and `rm` aliases are temporarily disabled.

The `unalias` command is useful when you need to run the original command instead of the aliased version, without having to permanently remove the alias.
