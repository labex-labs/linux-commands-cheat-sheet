# Understand the Purpose of the unalias Command

In this step, you will learn about the purpose of the `unalias` command in Linux. The `unalias` command is used to temporarily disable an alias that has been previously created.

Aliases are shortcuts or nicknames for commands in the Linux terminal. They can make your workflow more efficient by allowing you to type a shorter command instead of the full command. However, there may be times when you need to temporarily disable an alias and use the original command instead.

Let's start by creating an alias for the `ls` command:

```bash
alias ls='ls -l'
```

Now, when you run the `ls` command, it will execute the `ls -l` command, which lists files in long format.

Example output:

```
total 12
drwxr-xr-x 2 labex labex 4096 May 11 10:00 bin
drwxr-xr-x 3 labex labex 4096 May 11 10:00 project
-rw-r--r-- 1 labex labex   24 May 11 10:00 README.md
```

To temporarily disable the alias and use the original `ls` command, you can use the `unalias` command:

```bash
unalias ls
ls
```

Example output:

```
bin  project  README.md
```

As you can see, the `unalias ls` command temporarily disables the alias, and the `ls` command now executes the original `ls` command instead of the aliased version.

The `unalias` command is useful when you need to run the original command instead of the aliased version, without having to permanently remove the alias.
