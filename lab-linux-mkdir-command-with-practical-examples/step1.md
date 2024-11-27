# Create Directories with mkdir Command

In this step, you will learn how to create directories using the `mkdir` command in Linux.

The `mkdir` command is used to create new directories. You can create a single directory or multiple directories at once.

To create a new directory, use the following syntax:

```
mkdir directory_name
```

Example:

```
$ mkdir mydir
$ ls
mydir
```

In the example above, we created a new directory named `mydir` using the `mkdir` command. You can verify the directory was created by running the `ls` command.

You can also create multiple directories at once by providing multiple directory names separated by spaces:

```
mkdir dir1 dir2 dir3
```

Example output:

```
$ mkdir dir1 dir2 dir3
$ ls
dir1  dir2  dir3  mydir
```

Now, let's create a directory structure with multiple levels:

```
mkdir -p parent/child/grandchild
```

The `-p` option in the `mkdir` command allows you to create the entire directory structure, including any necessary parent directories, in a single command.

Example output:

```
$ mkdir -p parent/child/grandchild
$ ls -R
.:
child  parent

./parent:
child

./parent/child:
grandchild
```

As you can see, the `mkdir -p` command created the `parent`, `child`, and `grandchild` directories in a single step.
