# Permissions Management with mkdir

In this step, you will learn how to manage permissions when creating directories using the `mkdir` command in Linux.

By default, when you create a new directory using `mkdir`, the directory inherits the permissions of the parent directory. However, you can also specify the permissions explicitly when creating the directory.

To create a new directory with specific permissions, you can use the `-m` option followed by the permission mode:

```
mkdir -m 755 my_dir
```

In the example above, we create a new directory named `my_dir` with permissions set to `755` (read, write, and execute for the owner; read and execute for the group and others).

You can also use symbolic permissions instead of numeric modes:

```
mkdir -m u=rwx,g=rx,o=rx my_dir
```

This command creates the `my_dir` directory with the same permissions as the previous example, but using symbolic notation.

Let's create a directory with different permissions:

```
mkdir -m 700 secret_dir
```

This creates a new directory named `secret_dir` with permissions set to `700` (read, write, and execute for the owner; no access for the group and others).

You can verify the permissions of the directories using the `ls -l` command:

```
$ ls -l
total 8
drwxr-xr-x 2 labex labex 4096 Apr 12 12:34 my_dir
drwx------ 2 labex labex 4096 Apr 12 12:35 secret_dir
```

As you can see, the `my_dir` directory has permissions `755`, while the `secret_dir` directory has permissions `700`.
