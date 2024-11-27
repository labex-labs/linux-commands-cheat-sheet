# Create and Manage Directories with mdir

In this step, you will learn how to create and manage directories using the `mdir` command.

First, let's create a new directory structure using the `mdir` command:

```
mdir -p projects/app1 projects/app2 projects/app3
```

This will create the following directory structure:

```
$ tree projects
projects
├── app1
├── app2
└── app3
```

The `-p` option ensures that the parent directories (`projects`) are created if they don't already exist.

Now, let's explore some additional options for managing directories with `mdir`:

**Removing directories**

To remove directories, you can use the `rmdir` command. For example, to remove the `projects/app2` directory:

```
rmdir projects/app2
```

**Renaming directories**

To rename a directory, you can use the `mv` (move) command. For example, to rename `projects/app1` to `projects/frontend`:

```
mv projects/app1 projects/frontend
```

**Changing directory permissions**

You can use the `chmod` command to change the permissions of a directory. For example, to make the `projects/app3` directory writable for the group:

```
chmod g+w projects/app3
```

Example output:

```
$ ls -ld projects/app3
drwxr-xr-x 2 labex labex 4096 Apr 12 12:34 projects/app3
$ chmod g+w projects/app3
$ ls -ld projects/app3
drwxrwxr-x 2 labex labex 4096 Apr 12 12:34 projects/app3
```
