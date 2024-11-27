# Understand the chgrp Command

In this step, we will learn about the `chgrp` command in Linux, which is used to change the group ownership of files and directories.

The `chgrp` command has the following syntax:

```
chgrp [options] GROUP FILE(S)
```

Here, `GROUP` is the name of the group you want to assign to the file(s), and `FILE(S)` are the file(s) or directory(ies) whose group ownership you want to change.

Some common options for the `chgrp` command include:

- `-R`: Recursively change the group ownership of files and directories in a directory tree.
- `-v`: Display a message for each file whose group is being changed.
- `-c`: Like verbose, but report only when a change is made.
- `-f`: Suppress most error messages.

Let's start by creating a new file and a directory in the `~/project` directory:

```
cd ~/project
touch file.txt
mkdir mydir
```

Now, let's change the group ownership of the `file.txt` file to the `admin` group:

```
sudo chgrp admin file.txt
```

Example output:

```

```

In this example, we used the `sudo` command to execute the `chgrp` command with the `admin` group as the new group owner for the `file.txt` file.

You can also change the group ownership of multiple files or directories at once:

```
sudo chgrp admin file.txt mydir
```

Example output:

```

```

Here, we changed the group ownership of both the `file.txt` file and the `mydir` directory to the `admin` group.

To verify the group ownership of the files, you can use the `ls -l` command:

```
ls -l
```

Example output:

```

```

The output shows that the group ownership of the `file.txt` file and the `mydir` directory has been changed to the `admin` group.
